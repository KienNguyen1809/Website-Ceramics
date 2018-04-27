<?php

namespace App\Http\Controllers;
use App\Slide;
use App\Product;
use App\ProductCategory;
use App\Cart;
use App\User;
use App\Customer;
use App\Bill;
use App\BillDetail;
use App\Compare;
use App\Comment;
use Session;
use Hash;
use Auth;
use Mail;
// use Request;
use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Auth;

class PageController extends Controller
{
    var $email;
    var $name;
    var $total;
    var $id_product;
    var $quantity;
    var $unit_price;

    public function getIndex() {
        $products = Product::where('promotion_price','=',0)->limit(4)->get() and Product::orderBy('updated_at', 'DESC')->limit(4)->get();
        $product_sale=Product::where('promotion_price','>',0)->limit(4)->get();
        $brand = ProductCategory::all();
        $slide=Slide::all();
        return view('pages.index', compact('products', 'brand','slide','product_sale'));
    }

    public function getDetail(Request $req) {
        $product = Product::where('id', $req->id)->first();
    	return view('pages.detail', compact('product'));
    }

    public function getStore() {
        $products = Product::paginate(8);
        $brand = ProductCategory::all();
        return view('pages.store', compact('products', 'brand'));
    }
    public function getPromotion() {
            $product_promotion = Product::where('promotion_price','>',0)->get();
            return view('pages.promotion', compact('product_promotion'));
        }
    public function getBrandfind($id) {
        $brand = ProductCategory::all();
        $products = Product::where('cate_id', '=', $id)->paginate(8);
        return view('pages.store', compact('products', 'brand'));
    }

    public function getPricefind($min_price, $max_price) {
        $brand = ProductCategory::all();
        $products = Product::whereBetween('unit_price', [$min_price, $max_price])->paginate(8);
        return view('pages.price', compact('products', 'brand'));
    }

    public function getPriceDESC() {
        $products = Product::orderBy('unit_price', 'DESC')->paginate(8);
        $brand = ProductCategory::all();
        return view('pages.price', compact('products', 'brand'));
    }

    public function getPriceASC() {
        $products = Product::orderBy('unit_price', 'ASC')->paginate(8);
        $brand = ProductCategory::all();
        return view('pages.price', compact('products', 'brand'));
    }

    public function getAddtoCart(Request $req,$id){
        $product = Product::find($id);
        $oldCart = Session('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->add($product, $id);
        $req->session()->put('cart', $cart);
        return redirect()->back();
    }

    public function getDelItemCart($id){
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);
        if(count($cart->items)>0){
            Session::put('cart',$cart);
        }
        else{
            Session::forget('cart');
        }
        return redirect()->back();
    }
    public function getCart() {
        return view('pages.cart');
    }
    
    public function getContact() {
        return view('pages.contact');
    }
     public function postMail(Request $request)
    {
        $this->mail=$request->mail;
         $product = Product::where('promotion_price','>',0)->limit(4)->get();
         foreach($product as $key => $product1)
         {
            $this->name=$product1->name; 
            $this->unit_price=$product1->unit_price;
            $this->promotion_price=$product1->promotion_price;
            $this->image=$product1->image;
        $data=array('mail'=>$request->mail,'name'=>$product1->name,'unit_price'=>$product1->unit_price,'promotion_price'=>$product1->promotion_price,'image'=>$product1->image);
        }
            Mail::send('emails.email',$data,function($msg)
            {
                $msg->to($this->mail,$this->name,$this->unit_price,$this->promotion_price,$this->image)->subject('Chào mừng bạn đến với Gốm Sứ thank');
            
            });
        
    
        echo " <script>
            alert('cảm ơn quý khách');
            window.location = '".url('/')."';
            </script> ";

    }
     public function postContact(Request $request) {
        $this->name=$request->name;
        $this->email=$request->email;
        $this->message=$request->message;
        $this->number=$request->number;
        $data=array('name'=>$request->name,'email'=>$request->email,'tinnhan'=>$request->message,'number'=>$request->number);
        Mail::send('emails.contact', $data, function($message)
        {
            $message->to($this->email, $this->name, $this->message, $this->number)->subject('Chào mừng bạn đến với Gốm Sứ THANK');
        });
        // $data=['hoten'=>Request::input('name'),'tinnhan'=>Request::input('message'),'email'=>Request::input('email'),'number'=>Request::input('number')];
     //    $data=array('name'=>$request->name,'email'=>$request->email,'message'=>$request->message,'number'=>$request->number);
     //    Mail::send('emails.blanks',$data,function($msg)
     //        {
     //        $msg->from('haunguyen112797@gmail.com','Hậu Nguyễn');
     // $msg->to($this->email,'lan nguyễn')->subject('chờ phản hồi');
     //        });
        echo " <script>
            alert('cảm ơn quý khách');
            window.location = '".url('contact')."';
            </script> ";

    //     $data=array('name'=>$request->name,'message'=>$request->message,'email'=>$request->email,'number'=>$request->number);
    //     Mail::send('emails.blanks', $data, function($message)
    //     {
    // //        $msg->from('haunguyen112797@gmail.com','Hậu Nguyễn');
    //         $message->to($this->email,'lan nguyễn')->subject('Chờ phản hồi');
    //     });
    //     return redirect('blanks')->with('thongbao','Chúng tôi sẽ liên hệ với bạn qua email');
    }

    public function getAbout() {
        return view('pages.about');
    }

    public function getRegister() {
        return view('pages.register');
    }
    public function getSearch(Request $req) {
        $product = Product::where('name', 'like', '%'.$req->key.'%')->get();
        $key = $req->key;
        return view('pages.search', compact('product', 'key'));
    }

    public function postCheckout(Request $req){
        $cart = Session::get('cart');

        $customer = new Customer;
        $customer->name = $req->name;
        $this->name = $req->name;
        $customer->gender = $req->gender;
        $customer->email = $req->email;
        $this->email = $req->email;
        $customer->address = $req->address;
        $this->address = $req->address;
        $customer->phone_number = $req->phone;
        $this->phone_number = $req->phone;
        $customer->note = $req->notes;
        $customer->save();

        
        $bill = new Bill;
        $bill->id_customer = $customer->id;
        $bill->total = $cart->totalPrice;
        $this->total = $cart->totalPrice;
        $bill->payment = $req->payment_method;
        $this->payment = $req->payment_method;
        $bill->note = $req->notes;
        $bill->save();
        $product = Product::all();
         foreach($product as  $product1)
         {
            $this->name=$product1->name; 
           
        }

        foreach ($cart->items as $key => $value) {
            $bill_detail = new BillDetail;
            $bill_detail->id_bill = $bill->id;
            $bill_detail->id_product = $key;
            // $this->id_product = $key;
            $bill_detail->quantity = $value['qty'];
            $this->quantity = $value['qty'];
            $bill_detail->unit_price = ($value['price'] / $value['qty']);
            $this->unit_price = ($value['price'] / $value['qty']);
            // $bill_detail->promotion_price= ($value['promotion_price']*$value['qty']);
            // var_dump($products);die();
            $bill_detail->save();
        }
        $data=array('name'=>$req->name, 'email'=>$req->email, 'address'=>$req->address, 'phone_number'=>$req->phone, 'id_product'=>$product1->name, 'quantity'=>$value['qty'],'unit_price'=>$value['price'] / $value['qty'], 'payment'=>$req->payment_method, 'total'=> $cart->totalPrice);
        Mail::send('emails.buyer', $data, function($message)
        {
            $message->to($this->email, $this->name, $this->address, $this->phone_number, $this->total, $this->payment, $this->name, $this->quantity, $this->unit_price)->subject('Chào mừng bạn đến với Gốm Sứ THANK');
        });
        Session::forget('cart');    
        return redirect()->back()->with('thongbao','Đặt hàng thành công');
    }

    public function postRegister(Request $req){
        $this->validate($req,
            [
                'email'=>'required|email|unique:users,email',
                'password'=>'required|min:6|max:20',
                'fullname'=>'required',
                're_password'=>'required|same:password',
            ],
            [
                'email.required'=>'Vui lòng nhập email',
                'email.email'=>'Không đúng định dạng email',
                'email.unique'=>'Email đã có người sử dụng',
                'password.required'=>'Vui lòng nhập mật khẩu',
                're_password.same'=>'Mật khẩu không giống nhau',
                'password.min'=>'Mật khẩu ít nhất 6 kí tự',
                'password.max'=>'Mật khẩu nhiều nhất 20 kí tự',
            ]);
        $user = new User();
        $user->name = $req->fullname;
        $this->name = $req->fullname;
        $user->email = $req->email;
        $this->email = $req->email;
        $user->password = Hash::make($req->password);
        $user->admin_user = 0;
        $user->remember_token = $req->remember_token;
        $user->save();

        $data=array('name'=>$req->fullname,'email'=>$req->email);
        Mail::send('emails.send', $data, function($message)
        {
    //        $msg->from('haunguyen112797@gmail.com','Hậu Nguyễn');
            $message->to($this->email, $this->name)->subject('Chào mừng bạn đến với Gốm Sứ THANK');
        });
        return redirect('dangnhap')->with('thongbao','Tạo tài khoản thành công. Chúng tôi sẽ liên hệ với bạn qua email');
    //    return redirect()->back()->with('thanhcong','Tạo tài khoản thành công');
    }

    public function compareProducts() {
        return view('pages.compare');
    }

    public function getAddtoCompare(Request $req, $id) {
        $product = Product::find($id);
        $oldCompare = Session('compare')?Session::get('compare'):null;
        $compare = new Compare($oldCompare);
        $compare->add($product, $id);
        $req->session()->put('compare',$compare);
        return redirect()->back();
    }

    public function getDelfromCompare($id) {
        $oldCompare = Session::has('compare')?Session::get('compare'):null;
        $compare = new Compare($oldCompare);
        $compare->removeItem($id);
        if(count($compare->items)>0){
            Session::put('compare',$compare);
        }
        else{
            Session::forget('compare');
            return redirect("");
        }
        return redirect()->back();
    }
    public function getLogin()
    {
        return view('pages.dangnhap');
    }
    public function postLogin(Request $request)
    {
        // kiểm tra các yêu cầu của người dùng
        $this->validate($request,[
            'email'=>'required',
            'password'=>'required|min:3|max:32'],
            [
                'email.required'=>'Bạn chưa nhập email',
                'password.required'=>'Bạn chưa nhập password',
                'password.max'=>'password không được nhỏ hơn 3 ký tự',
                'password.min'=>'password không được lớn hơn 32 ký tự'
            ]);
        if(Auth::attempt(['email'=>$request->email,'password'=>$request->password]))
            {
                return redirect('/');
            }
            else
            {
                return redirect('dangnhap')->with('thongbao','Đăng nhập không thành công');
            }
    }
}
