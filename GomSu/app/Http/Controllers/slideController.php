<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Slide;
use Illuminate\Support\Facades\Input;

class slideController extends Controller
{
    public function getDanhSach()
    {
    	$slide= Slide::all();
    	return view('admin.slide.danhsach', compact('slide'));
    }
    public function getThem()
    {
    	return view('admin.slide.them');
    }
    public function postThem(Request $request)
    {
    	$this->validate($request,
    		[
    			// 'link'=>'required',
    			'image'=>'required',
    		],
    		[
    			'image.required'=>'Bạn chưa chọn ảnh',
    			// 'link.required'=>'bạn chưa nhập link',
    		]);
    	 if(Input::hasFile('image')) {
            $file = Input::file('image');
            $file->move('source/images/slide', $file->getClientOriginalName());
        }
        $slide=new Slide;
        $slide->image=$file->getClientOriginalName();
        $slide->link=$request->link;
        $slide->save();
        return redirect('admin/slide/them')
        ->with('thong bao','Thêm thành công');
    }
    // Phần sửa
    public function getSua($id)
    {
    	$slide=Slide::find($id);
    	return view('admin.slide.sua',compact('slide'));
    }
    public function postSua(Request $request,$id)
    {
    	$this->validate($request,
    		[
    			// 'link'=>'required',
    			'image'=>'required',
    		],
    		[
    			'image.required'=>'Bạn chưa chọn ảnh',
    			// 'link.required'=>'bạn chưa nhập link',
    		]
    	);
    	$slide = Slide::find($id);
    	 if(Input::hasFile('image')) {
            $file = Input::file('image');
            $file->move('source/images/slide', $file->getClientOriginalName());
            $slide->image=$file->getClientOriginalName();
        }
        $slide->link=$request->link;
        $slide->save();
        return redirect('admin/slide/sua'.$id)
        ->with('thong bao','Sửa thành công');
    }
    // phần xóa
    public function getDelete($id)
    {
    	$slide=Slide::find($id);
    	$slide->delete();
    	return redirect('admin/slide/danhsach')->with('thong bao','Xóa thàng công');
    }
}
?>