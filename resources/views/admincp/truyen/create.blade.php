@extends('layouts.app')

@section('content')

@include('layouts.nav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Thêm truyện</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="POST" action="{{route('truyen.store')}}"  enctype='multipart/form-data'>
                        @csrf
                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tên truyện</label>
                        <input type="text" class="form-control" name="tentruyen" onkeyup="ChangeToSlug()"  value="{{old('tentruyen')}}" id="slug" aria-describedby="emailHelp" placeholder="Nhập tên truyện...">
                      </div>

                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tác giả</label>
                        <input type="text" class="form-control" name="tacgia"  value="{{old('tacgia')}}"  aria-describedby="emailHelp" placeholder="Nhập tên tác giả...">
                      </div>

                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Slug truyện</label>
                        <input type="text" class="form-control" name="slug_truyen"  value="{{old('slug_truyen')}}" id="convert_slug" aria-describedby="emailHelp" placeholder="Slug truyện...">
                      </div>

                      <div class="mb-3">
                        <label for="exampleInputEmail1">Tóm tắt truyện</label>
                        <textarea class="form-control" name="tomtat" value="{{old('tomtat')}}" style="resize: none;" rows="5"></textarea>
                      </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1">Danh mục truyện</label>
                            <select class="form-select" name="danhmuc" aria-label="Default select example">
                            @foreach($danhmuc as $key => $muc)

                              <option value="{{$muc->id}}">{{$muc->tendanhmuc}}</option>
                              @endforeach
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1">Thể loại truyện</label>
                            <select class="form-select" name="theloai" aria-label="Default select example">
                            @foreach($theloai as $key => $the)

                              <option value="{{$the->id}}">{{$the->tentheloai}}</option>
                              @endforeach
                            </select>
                        </div>


                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Hình ảnh truyện</label>
                        <input type="file" class="form-control-file" name="hinhanh">
                      </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1">Kích hoạt</label>
                            <select class="form-select" name="kichhoat" aria-label="Default select example">

                              <option value="0">Kích hoạt</option>
                              <option value="1">không kích hoạt</option>
                            </select>
                        </div>

                      <button type="submit" class="btn btn-primary">Thêm</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
