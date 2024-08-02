@extends('layouts.app')

@section('content')

@include('layouts.nav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Thêm danh mục</div>
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="POST" action="{{route('chapter.store')}}">
                        @csrf
                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tiêu đề chapter</label>
                        <input type="text" class="form-control" name="tieude" onkeyup="ChangeToSlug()"  value="{{old('tieude')}}" id="slug" aria-describedby="emailHelp" placeholder="Nhập tiêu đề chapter...">
                      </div>

                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Slug chapter</label>
                        <input type="text" class="form-control" name="slug_chapter"  value="{{old('slug_chapter')}}" id="convert_slug" aria-describedby="emailHelp" placeholder="Nhập slug chapter...">
                      </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tóm tắt chapter</label>
                        <input type="text" class="form-control" value="{{old('tomtat')}}"  name="tomtat" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nội dung chapter...">

                      </div>


                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Nội dung chapter</label>
                        <textarea class="form-control" id="noidung_chapter" name="noidung" style="resize: none;" rows="5"></textarea>
                    </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1">Thuộc truyện</label>
                            <select class="form-select" name="truyen_id">
                            @foreach($truyen as $key => $value)
                              <option value="{{$value->id}}">{{$value->tentruyen}}</option>
                            @endforeach
                            </select>
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
