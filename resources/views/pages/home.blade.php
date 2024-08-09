@extends('../layout')
@section('slide')
	@include('pages.slide')
@endsection
@section('content')


<style type="text/css">
.image-container {
    width: 100%;
    position: relative;
    padding-top: 100%; /* Tỷ lệ khung hình 4:3 (tùy chỉnh theo yêu cầu của bạn) */
    overflow: hidden;
}

.image-container img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover; /* Đảm bảo ảnh phủ toàn bộ khung chứa */
}

.card {
    display: flex;
    flex-direction: column;
}

.card-body {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
}

.card-text {
    flex-grow: 1;
}

.btn-group {
    display: flex;
}

.d-flex {
    display: flex;
}

.flex-column {
    flex-direction: column;
}

.flex-grow-1 {
    flex-grow: 1;
}

.mt-auto {
    margin-top: auto;
}

</style>

<h2>TRUYỆN MỚI CẬP NHẬT</h2>
<div class="album py-5 bg-body-tertiary">
<div class="container">
  <div class="row">
    @foreach($truyen as $key => $value)
    <div class="col-md-3 d-flex">
      <div class="card mb-3 box-shadow flex-grow-1">
        <div class="image-container">
          <img class="card-img-top" src="{{asset('public/uploads/truyen/'.$value->hinhanh)}}" alt="Image">
        </div>
        <div class="card-body d-flex flex-column">
          <h4>{{$value->tentruyen}}</h4>
          <p class="card-text flex-grow-1">{{$value->tomtat}}</p>
          <div class="d-flex justify-content-between align-items-center mt-auto">
            <div class="btn-group">
              <a href="{{url('xem-truyen/'.$value->slug_truyen)}}" class="btn btn-sm btn-outline-secondary">Đọc ngay</a>
              <a type="button" class="btn btn-sm btn-outline-secondary"><i class="fas fa-eye"></i> {{$value->views}}</a>
            </div>
            <small class="text-body-secondary">9 mins</small>
          </div>
        </div>
      </div>
    </div>
    @endforeach
  </div>
  <a class="btn btn-outline-success" href="">Xem tất cả</a>
</div>

</div>

<style type="text/css">
.image-container {
    width: 100%;
    padding-top: 100%; /* Tỷ lệ 16:9 */
    position: relative;
    overflow: hidden;
}

.image-container img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.card {
    display: flex;
    flex-direction: column;
}

.card-body {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
}

.card-text {
    flex-grow: 1;
}

.btn-group {
    display: flex;
}

.d-flex {
    display: flex;
}

.flex-column {
    flex-direction: column;
}

.flex-grow-1 {
    flex-grow: 1;
}

.mt-auto {
    margin-top: auto;
}
</style>


@endsection