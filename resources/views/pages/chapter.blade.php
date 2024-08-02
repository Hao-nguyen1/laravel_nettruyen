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
            <li class="breadcrumb-item"><a href="{{url('the-loai/'.$truyen_breadcrumb->theloai->slug_theloai)}}">{{$truyen_breadcrumb->theloai->tentheloai}}</a></li>
            <li class="breadcrumb-item"><a href="{{url('danh-muc/'.$truyen_breadcrumb->danhmuctruyen->slug_danhmuc)}}">{{$truyen_breadcrumb->danhmuctruyen->tendanhmuc}}</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{$truyen_breadcrumb->tentruyen}}</li>
        </ol>
    </nav>
</div>

      <div class="row">
        <div class="col-md-12">
			<h4>{{$chapter->truyen->tentruyen}}</h4>
			<p>Chương hiện tại: {{$chapter->tieude}}</p>

            <div class="col-md-5">

            	<style type="text/css">
            		.isDisabled {
            			color: currentColor;
            			pointer-events: none;
            			opacity: 0.5;
            			text-decoration: none;
            		}
            	</style>

            	<p><a class="btn btn-primary {{$chapter->id==$min_id->id ? 'isDisabled' : ''}}" href="{{url('xem-chapter/'. $previous_chapter)}}">Chương trước</a></p>
            <div class="form-group">
            	<label for="exampleInputEmail">Chọn chương</label>
            	<select name="kichhoat" class="custom-select select-chapter">
            		@foreach($all_chapter as $key => $chap)
            		<option value="{{url('xem-chapter/'.$chap->slug_chapter)}}">{{$chap->tieude}}</option>
            		@endforeach
            	</select>
            </div>
            	<p><a class="btn btn-primary {{$chapter->id==$max_id->id ? 'isDisabled' : ''}}"  href="{{url('xem-chapter/'. $next_chapter)}}">Chương sau</a></p>

        </div>
            <div class="noidungchuong">

            	{!! $chapter->noidung !!}

            <div class="form-group">
            	<label for="exampleInputEmail">Chọn chương</label>
            	<select name="kichhoat" class="custom-select select-chapter">
            		@foreach($all_chapter as $key => $chap)
            		<option value="{{url('xem-chapter/'.$chap->slug_chapter)}}">{{$chap->tieude}}</option>
            		@endforeach
            	</select>
            </div>

            	<h3>Lưu và chia sẻ truyện:     </h3>
            		<a href=""><i class="fab fa-facebook"></i></a>
            		<a href=""><i class="fab fa-facebook"></i></a>

            </div>
        </div>
</div>

@endsection