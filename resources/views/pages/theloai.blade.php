@extends('../layout')

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

            <li class="breadcrumb-item active" aria-current="page">{{$tentheloai}}</li>
        </ol>
    </nav>
</div>

<h2>{{$tentheloai}}</h2>
<div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row">
            @php
              $count = count($truyen);
            @endphp
            @if($count ==0)

              <div class="col-md-3">
                <div class="card mb-3 box-shadow">
                  <div class="card-body">
                    <p>Truyện đang cập nhật...</p>
                  </div>
                </div>
              </div>
            @else
          @foreach($truyen as $key => $value)
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
          @endif
      </div>
  </div>
  </div>





@endsection