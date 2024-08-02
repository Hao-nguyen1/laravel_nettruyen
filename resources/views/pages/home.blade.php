@extends('../layout')
@section('slide')
	@include('pages.slide')
@endsection
@section('content')


<h2>TRUYỆN MỚI CẬP NHẬT</h2>
<div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row">
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
    </div>

<a class="btn btn-outline-success" href="">Xem tất cả</a>
</div>
</div>



<!----------Sách xem nhieu------------>
<h2>TRUYỆN XEM NHIỀU</h2>
<!-- <div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row">

        <div class="col-md-3">
          <div class="card mb-3 box-shadow">
          	<a href=""></a>

            <img class="card-img-top" src="{{asset('public/uploads/truyen/OIP76.jfif')}}">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">Đọc ngay</button>
                  <a type="button" class="btn btn-sm btn-outline-secondary"><i class="fas fa-eye"></i>75434</a>
                </div>
                <small class="text-body-secondary">9 mins</small>
              </div>
            </div>
          </div>
        </div>


    </div>
<a class="btn btn-outline-success" href="">Xem tất cả</a>
</div> -->

@endsection