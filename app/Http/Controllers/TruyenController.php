<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DanhmucTruyen;
use App\Models\Truyen;
use App\Models\Theloai;

class TruyenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $list_truyen = Truyen::with('danhmuctruyen', 'theloai')->orderBy('id', 'DESC')->get();
        return view('admincp.truyen.index')->with(compact('list_truyen'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $theloai = Theloai::orderBy('id','DESC')->get();
        $danhmuc = DanhmucTruyen::orderBy('id', 'DESC')->get();
        return view('admincp/truyen/create')->with(compact('danhmuc', 'theloai'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(
            [
                'tentruyen' => 'required|unique:truyen|max:255',

                'slug_truyen' => 'required|unique:truyen|max:255',
                'tomtat' => 'required|max:255',
                'hinhanh' => 'required|image|mimes:jpg,png,jpge,gif,svg|max:2048|dimensions:min_width=100, min_height=100, max_width=2000, max_height=2000',
                
                'tacgia' => 'required',

                'kichhoat' => 'required',
                'danhmuc' => 'required',
                'theloai' => 'required',


            ],
            [
                'tentruyen.unique' => 'Tên truyện đã tồn tại',
                'slug_truyen.unique' => 'Slug truyện đã tồn tại',
                'tentruyen.required' => 'cần nhập tên danh mục',
                'slug_truyen.required' => 'cần có slug truyện',
                'tacgia.required' => 'cần nhập tác giả',
                'tomtat.required' => 'cần nhập tóm tắt truyện',
                'hinhanh.required' => 'cần có ảnh truyện',
            ]
        );

        // $data = $request->all();

        $truyen = new Truyen();
        $truyen->tentruyen = $data['tentruyen'];
        $truyen->slug_truyen = $data['slug_truyen'];
        $truyen->theloai_id = $data['theloai'];
        $truyen->tomtat = $data['tomtat'];
        $truyen->kichhoat = $data['kichhoat'];
        $truyen->tacgia = $data['tacgia'];

        $truyen->danhmuc_id = $data['danhmuc'];



        $get_image = $request->hinhanh;
        $path = 'public/uploads/truyen/';
        $get_name_image = $get_image->getClientOriginalName();
        $name_image = current(explode('.', $get_name_image));
        $new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
        $get_image->move($path,$new_image);

        $truyen->hinhanh = $new_image;

        $truyen->save();
        return redirect()->back()->with('status', 'Thêm truyện thành công');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {    
        $truyen = Truyen::find($id);
        $theloai = Theloai::orderBy('id','DESC')->get();
    
        $danhmuc = DanhmucTruyen::orderBy('id', 'DESC')->get();

        return view('admincp.truyen.edit')->with(compact('truyen', 'danhmuc', 'theloai'));    
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->validate(
            [
                'tentruyen' => 'required|max:255',
                'slug_truyen' => 'required|max:255',
                'tomtat' => 'required|max:255',

                'kichhoat' => 'required',
                'danhmuc' => 'required',
                'tacgia' => 'required',
                'theloai' => 'required',


            ],
            [
                'tentruyen.required' => 'cần nhập tên danh mục',
                'slug_truyen.required' => 'cần có slug truyện',
                'tomtat.required' => 'cần nhập tóm tắt truyện',
                'tacgia.required' => 'cần nhập tác giả',
            ]
        );

        // $data = $request->all();

        $truyen = Truyen::find($id);
        $truyen->tentruyen = $data['tentruyen'];
        $truyen->slug_truyen = $data['slug_truyen'];
        $truyen->theloai_id = $data['theloai'];
        $truyen->tomtat = $data['tomtat'];
        $truyen->kichhoat = $data['kichhoat'];
        $truyen->tacgia = $data['tacgia'];
        $truyen->danhmuc_id = $data['danhmuc'];

        $get_image = $request->hinhanh;
        if($get_image){
            $path = 'public/uploads/truyen/'.$truyen->hinhanh;
            if(file_exists($path)){
                unlink($path);
            }
            $path = 'public/uploads/truyen/';
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move($path,$new_image);

            $truyen->hinhanh = $new_image;
        }


        $truyen->save();
        return redirect()->back()->with('status', 'Cập nhật truyện thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $truyen = Truyen::find($id);
        $path = 'public/uploads/truyen/';
        if($truyen->hinhanh != NULL){
            unlink($path.$truyen->hinhanh);
        }
        Truyen::find($id)->delete();
        return redirect()->back()->with('status', 'Xóa truyện thành công!');
    }
}
