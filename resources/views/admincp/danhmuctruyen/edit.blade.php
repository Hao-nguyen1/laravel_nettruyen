@extends('layouts.app')

@section('content')

@include('layouts.nav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Sửa danh mục</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="POST" action="{{route('danhmuc.update', [$danhmuc->id])}}">
                        @method('PUT')
                        @csrf
                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tên danh mục</label>
                        <input type="text" class="form-control" value="{{$danhmuc->tendanhmuc}}" onkeyup="ChangeToSlug()" name="tendanhmuc" id="slug" aria-describedby="emailHelp" placeholder="Nhập tên danh mục...">
                      </div>

                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Slug danh mục</label>
                        <input type="text" class="form-control" name="slug_danhmuc"  value="{{$danhmuc->slug_danhmuc}}"  id="convert_slug" aria-describedby="emailHelp" placeholder="Nhập tên danh mục...">
                      </div>

                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Mô tả danh mục</label>
                        <input type="text" class="form-control" value="{{$danhmuc->mota}}" name="mota" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Mô tả danh mục...">
                      </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1">Kích hoạt</label>
                            <select class="form-select" name="kichhoat" aria-label="Default select example">
                                @if($danhmuc->kichhoat == 0)
                              <option selected value="0">Kích hoạt</option>
                              <option value="1">không kích hoạt</option>
                              @else
                              <option value="0">Kích hoạt</option>
                              <option selected value="1">không kích hoạt</option>
                              @endif
                             </select>
                        </div>

                      <button type="submit" class="btn btn-primary">Sửa</button>
                            
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
