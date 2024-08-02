@extends('layouts.app')

@section('content')

@include('layouts.nav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Cập nhật truyện</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="POST" action="{{route('truyen.update',[$truyen->id])}}" enctype='multipart/form-data'>
                        @method('PUT')
                        @csrf
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Tên truyện</label>
                            <input type="text" class="form-control" name="tentruyen" onkeyup="ChangeToSlug()" value="{{$truyen->tentruyen}}" id="slug" aria-describedby="emailHelp" placeholder="Nhập tên truyện...">
                        </div>

                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tác giả</label>
                        <input type="text" class="form-control" name="tacgia"  value="{{$truyen->tacgia}}"  aria-describedby="emailHelp" placeholder="Nhập tên tác giả...">
                      </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Slug truyện</label>
                            <input type="text" class="form-control" name="slug_truyen" value="{{$truyen->slug_truyen}}" id="convert_slug" aria-describedby="emailHelp" placeholder="Slug truyện...">
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1">Tóm tắt truyện</label>
                            <textarea class="form-control" name="tomtat" style="resize: none;" rows="5">{{$truyen->tomtat}}</textarea>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1">Danh mục truyện</label>
                            <select class="form-select" name="danhmuc" aria-label="Default select example">
                                @foreach($danhmuc as $key => $muc)
                                    <option {{$muc->id == $truyen->danhmuc_id ? 'selected' : ''}} value="{{$muc->id}}">{{$muc->tendanhmuc}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1">Thể loại truyện</label>
                            <select class="form-select" name="theloai" aria-label="Default select example">
                                @foreach($theloai as $key => $the)
                                    <option {{$the->id == $truyen->theloai_id ? 'selected' : ''}} value="{{$the->id}}">{{$the->tentheloai}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Hình ảnh truyện</label>
                            <input type="file" class="form-control-file" name="hinhanh">
                        </div>
                        <div class="mb-3">
                            <img src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" height="100" width="100">
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1">Kích hoạt</label>
                            <select class="form-select" name="kichhoat" aria-label="Default select example">
                                @if($truyen->kichhoat == 0)
                                    <option selected value="0">Kích hoạt</option>
                                    <option value="1">không kích hoạt</option>
                                @else
                                    <option value="0">Kích hoạt</option>
                                    <option selected value="1">không kích hoạt</option>
                                @endif
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Cập nhật</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
