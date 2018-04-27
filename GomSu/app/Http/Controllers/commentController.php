<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Product;
use App\Comment;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;


class commentController extends Controller
{
	// public function getDanhSach()
 //    {
 //    	$comment = Comment::with('product')->get();
 //    	return view('admin.sanpham.danhsach', compact('comment'));
 //    }

	public function postComment($id,Request $request)
	{
		$idproduct=$id;
		// id chính là id sản phẩm
		$product=Product::find($id);
		$comment=new Comment;
		$comment->comment=$request->comment;
		$comment->idproduct=$idproduct;
		$comment->id_users=Auth::user()->id;
		$comment->rate="";
		$comment->save();
		// var_dump($x2);die(); trả về true là đúng

		return redirect("detail/$id")->with('thongbao','Cảm ơn đóng góp của bạn!!');

	}
	public function getDelete($id,$idproduct)
	{
		$comment=Comment::find($id);
		$comment->delete();
		return redirect('admin/sanpham/sua/'.$idproduct)->with('thongbao','Xóa thành công');
	}
}
?>