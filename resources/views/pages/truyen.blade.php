@extends('../layout')
{{-- @section('slide')
  @include('pages.slide')
@endsection --}}
@section('content')


<style>
    .breadcrumb-container {
        padding: 10px;
        margin: 20px;
        background-color: #e9ecef; /* Màu xám nhạt */
        border: 1px solid #ddd; /* Viền màu xám nhạt */
        border-radius: 5px; /* Góc bo tròn */
        display: flex;
        align-items: center; /* Căn giữa theo chiều dọc */
    }

    .breadcrumb {
        margin: 0; /* Xóa khoảng cách mặc định */
        padding: 0; /* Xóa khoảng cách mặc định */
    }

    .breadcrumb a {
        color: #007bff; /* Màu chủ đạo của Bootstrap */
        text-decoration: none;
    }

    .breadcrumb a:hover {
        text-decoration: underline;
    }
</style>
<div class="breadcrumb-container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="{{url('the-loai/'.$truyen->theloai->slug_theloai)}}">{{$truyen->theloai->tentheloai}}</a></li>
            <li class="breadcrumb-item"><a href="{{url('danh-muc/'.$truyen->danhmuctruyen->slug_danhmuc)}}">{{$truyen->danhmuctruyen->tendanhmuc}}</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{$truyen->tentruyen}}</li>
        </ol>
    </nav>
</div>

      <div class="row">

        <div class="col-md-9">
          <div class="row">

            <div class="col-md-3">
              <img class="card-img-top" src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" >
            </div>

            <div class="col-md-9">
              <style type="text/css">
                
                .tagcloud05 ul {
                  margin: 0;
                  padding: 0;
                  list-style: none;
                }
                .tagcloud05 ul li {
                  display: inline-block;
                  margin: 0 0 .3em 1em;
                  padding: 0;
                }
                .tagcloud05 ul li a {
                  position: relative;
                  display: inline-block;
                  height: 30px;
                  line-height: 30px;
                  padding: 0 1em;
                  background-color: #3498db;
                  border-radius: 0 3px 3px 0;
                  color: #fff;
                  font-size: 13px;
                  text-decoration: none;
                  -webkit-transition: .2s;
                  transition: .2s;
                }
                .tagcloud05 ul li a::before {
                  position: absolute;
                  top: 0;
                  left: -15px;
                  content: '';
                  width: 0;
                  height: 0;
                  border-color: transparent #3498db transparent transparent;
                  border-style: solid;
                  border-width: 15px 15px 15px 0;
                  -webkit-transition: .2s;
                  transition: .2s;
                }
                .tagcloud05 ul li a::after {
                  position: absolute;
                  top: 50%;
                  left: 0;
                  z-index: 2;
                  display: block;
                  content: '';
                  width: 6px;
                  height: 6px;
                  margin-top: -3px;
                  background-color: #fff;
                  border-radius: 100%;
                }
                .tagcloud05 ul li span {
                  display: block;
                  max-width: 100px;
                  white-space: nowrap;
                  text-overflow: ellipsis;
                  overflow: hidden;
                }
                .tagcloud05 ul li a:hover {
                  background-color: #555;
                  color: #fff;
                }
                .tagcloud05 ul li a:hover::before {
                  border-right-color: #555;
                }
              </style>
              <style type="text/css">
                .infortruyen{
                  list-style: none;
                }
              </style>
              <ul class="infortruyen">
                <li>Tên truyện: {{$truyen->tentruyen}}</li>
                <li>Tác giả: {{$truyen->tacgia}}</li>
                <li>Danh mục truyện: <a href="{{url('danh-muc/'.$truyen->danhmuctruyen->slug_danhmuc)}}">{{$truyen->danhmuctruyen->tendanhmuc}}</a></li>
                <li>Thể loại: <a href="{{url('the-loai/'.$truyen->theloai->slug_theloai)}}">{{$truyen->theloai->tentheloai}}</a></li>
                <li>Số chapter: 200</li>
                <li>Số lượt xem: 23408932</li>
                <li><a href="#">Xem mục lục</a></li>

                @if($chapter_dau)
                <li><a href="{{url('xem-chapter/'.$chapter_dau->slug_chapter)}}" class="btn btn-primary">Đọc từ đầu</a></li>
                
                <button class="btn btn-danger btn-thich_truyen"><i class="fa fa-heart" aria-hidden="true"></i> Theo dõi truyện </button>

                @else
                <li><a href="" class="btn btn-danger">Hiện tại chưa có chapter</a></li>
                @endif
                <p>Từ khóa tìm kiếm:
                @php
                $tukhoa = explode(",", $truyen->tukhoa);

                @endphp
                

                <div class="tagcloud05">
                  <ul>
                    @foreach($tukhoa as $key => $tu)

                    <li><a href="{{url('tag/'.\Str::slug($tu))}}"><span>{{$tu}}</span></a></li>
                    @endforeach
                  </ul>
                </div>
              </p>
              </ul>
            </div>  
          </div>
          <div class="col-md-12">
              <p>{!! $truyen->tomtat !!}</p>
          </div>

          <hr>
        <h4>Mục lục</h4>
        <ul class="mucluctruyen">
          @php
          $mucluc = count($chapter);
          @endphp

          @if($mucluc>0)

            @foreach($chapter as $key => $chap)
            <li><a href="{{url('xem-chapter/'.$chap->slug_chapter)}}">{{$chap->tieude}}</a></li>
            @endforeach
          @else
            <li>Mục lục đang cập nhật...</li>
          @endif
        </ul>
<div class="fb-comments" data-href="http://localhost/laravel_nettruyen/xem-truyen/ta-la-tien" data-width="" data-numposts="10"></div>
        <h4>Sách cùng danh mục</h4>
        <div class="row">
        @foreach($cungdanhmuc as $key => $value)
        <div class="col-md-3">
          <div class="card mb-3 box-shadow">

            <img class="card-img-top" src="{{asset('public/uploads/truyen/'.$value->hinhanh)}}">
            <div class="card-body">
              <h4>{{$value->tentruyen}}</h4>
              <p class="card-text">{{$value->tomtat}}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a href="{{url('xem-truyen/'.$value->slug_truyen)}}" class="btn btn-sm btn-outline-secondary">Đọc ngay</a>
                  <a type="button" class="btn btn-sm btn-outline-secondary"><i class="fas fa-eye"></i>75434</a>
                </div>
                <small class="text-body-secondary">9 mins</small>
              </div>
            </div>

          </div>
        </div>
        @endforeach

        </div>
              

        </div>

        <div class="col-md-3">

        </div>
        
      </div>

@endsection