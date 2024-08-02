<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DanhmucTruyen;
use App\Models\Truyen;
use App\Models\Chapter;

use App\Models\Theloai;

class IndexController extends Controller
{
    public function timkiem_ajax(Request $request)
    {
        $data = $request->aall();

        if($data['keywords']){
            $truyen = Truyen::where('tinhtrang', 0)->where('tentruyen', 'LIKE', '%'.$data['keywords'].'%')->get();

            $output = '
            <ul class="dropdown-menu" style="display:block;">'
            ;

            foreach ($truyen as $key => $tr) {
                $output.= '
                <li class="dropdown-menu" style="display:block;">'
                ;
            }

            $output .= '</ul>';
            echo $output;
        }
    }
    public function home()
    {
        $theloai = Theloai::orderBy('id', 'DESC')->get();

        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
    	$danhmuc = DanhmucTruyen::orderBy('id', 'DESC')->get();
    	$truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat',0)->get();
    	return view('pages.home')->with(compact('danhmuc', 'truyen', 'theloai', 'slide_truyen'));
    }

    public function danhmuc($slug)
    {
        $theloai = Theloai::orderBy('id', 'DESC')->get();
    	$danhmuc = DanhmucTruyen::orderBy('id', 'DESC')->get();

        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();

        $danhmuc_id = DanhmucTruyen::where('slug_danhmuc', $slug)->first();
        $tendanhmuc = $danhmuc_id->tendanhmuc;
        $truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat',0)->where('danhmuc_id',$danhmuc_id->id)->get();

    	return view('pages.danhmuc')->with(compact('danhmuc', 'truyen','tendanhmuc', 'theloai', 'slide_truyen'));
    }

    public function theloai($slug)
    {
        $theloai = Theloai::orderBy('id', 'DESC')->get();
        $danhmuc = DanhmucTruyen::orderBy('id', 'DESC')->get();
        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();


        $theloai_id = Theloai::where('slug_theloai', $slug)->first();
        $tentheloai = $theloai_id->tentheloai;

        $truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat',0)->where('theloai_id',$theloai_id->id)->get();

        return view('pages.theloai')->with(compact('danhmuc', 'truyen','tentheloai', 'theloai', 'slide_truyen'));
    }

    public function xemtruyen($slug)
    {
        $theloai = Theloai::orderBy('id', 'DESC')->get();
    	$danhmuc = DanhmucTruyen::orderBy('id', 'DESC')->get();
        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();

        $truyen = Truyen::with('danhmuctruyen', 'theloai')->where('slug_truyen', $slug)->where('kichhoat',0)->first();

        $chapter = Chapter::with('truyen')->orderBy('id', 'ASC')->where('truyen_id', $truyen->id)->get();

        $chapter_dau = Chapter::with('truyen')->orderBy('id', 'ASC')->where('truyen_id', $truyen->id)->first();


        $cungdanhmuc = Truyen::with('danhmuctruyen', 'theloai')->where('danhmuc_id', $truyen->danhmuctruyen->id)->whereNotIn('id',[$truyen->id])->get();

    	return view('pages.truyen')->with(compact('danhmuc', 'truyen', 'chapter', 'cungdanhmuc', 'chapter_dau', 'theloai', 'slide_truyen'));
    }

    public function xemchapter($slug)
    {
        $theloai = Theloai::orderBy('id', 'DESC')->get();
        $truyen = Chapter::where('slug_chapter', $slug)->first();

        $danhmuc = DanhmucTruyen::orderBy('id', 'DESC')->get();
        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();

        //breadcrumb
        $truyen_breadcrumb = Truyen::with('danhmuctruyen', 'theloai')->where('id', $truyen->truyen_id)->first();
        //end breadcrumb

        $chapter = Chapter::with('truyen')->where('slug_chapter', $slug)->where('truyen_id', $truyen->truyen_id)->first();

        $next_chapter = Chapter::where('truyen_id', $truyen->truyen_id)->where('id','>', $chapter->id)->min('slug_chapter');

        $previous_chapter = Chapter::where('truyen_id', $truyen->truyen_id)->where('id','<', $chapter->id)->max('slug_chapter');
        $all_chapter = Chapter::with('truyen')->orderBy('id', 'ASC')->where('truyen_id', $truyen->truyen_id)->get();

        $max_id = Chapter::where('truyen_id', $truyen->truyen_id)->orderBy('id', 'DESC')->first();
        $min_id = Chapter::where('truyen_id', $truyen->truyen_id)->orderBy('id', 'ASC')->first();

        return view('pages.chapter')->with(compact('danhmuc', 'chapter', 'all_chapter', 'next_chapter', 'previous_chapter', 'max_id', 'min_id', 'theloai', 'truyen_breadcrumb', 'slide_truyen'));
    }

    public function timkiem()
    {
        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
        $theloai = Theloai::orderBy('id', 'DESC')->get();

        $danhmuc = DanhmucTruyen::orderBy('id', 'DESC')->get();
        $tukhoa = $_GET['tukhoa'];
        $truyen = Truyen::with('danhmuctruyen', 'theloai')->where('tentruyen', 'LIKE', '%'.$tukhoa. '%')->Orwhere('tacgia', 'LIKE', '%'.$tukhoa. '%')->get();
        return view('pages.timkiem')->with(compact('danhmuc', 'slide_truyen', 'theloai', 'truyen', 'tukhoa'));
    }

    public function tag($tag){
        $info = Infor::find(1);
        $title = 'Tìm kiếm tags';

        $meta_desc = 'Tìm kiếm tags';
        $meta_keyword = 'Tìm kiếm tags';
        $url_canonical = \URL::current();
        $og_image = url('public/uploads/logo/'.$infor->logo);
        $link_icon = url('public/uploads/logo/'.$infor->logo);

        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
        $theloai = Theloai::orderBy('id', 'DESC')->get();
        $danhmuc = DanhmucTruyen::orderBy('id', 'DESC')->get();

        $tags = explode("-", $tag);

        $truyen = Truyen::with('danhmuctruyen', 'theloai')->where(function($query) use($tags){
            for ($i=0; $i < count($tags); $i++) { 
                $query->Orwhere('tukhoa', 'LIKE', '%'.$tags[$i]. '%');
            }
        })->paginate(12);

        return view('pages.tag')->with(compact('danhmuc', 'slide_truyen', 'theloai', 'truyen', 'tukhoa', 'tag', 'info', 'title', 'og_image', 'url_canonical', 'meta_keyword', 'meta_desc', 'link_icon' ));
    }
}
