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

    .album {
        background-color: #f8f9fa; /* Light background for contrast */
        padding-top: 40px; /* Added space above the cards */
        padding-bottom: 40px; /* Added space below the cards */
    }

    .card-container {
        padding-top: 20px; /* Space above cards */
        padding-bottom: 20px; /* Space below cards */
    }

    .card {
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        margin-bottom: 20px; /* Increased margin for more space between cards */
    }

    .card-img-top {
        width: 100%;
        height: 300px; /* Increased height for images */
        object-fit: cover; /* Ensure image covers the area without distortion */
        border-top-left-radius: 5px; /* Match card's border radius */
        border-top-right-radius: 5px; /* Match card's border radius */
    }

    .card-body {
        flex-grow: 1;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .card-text {
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 3; /* Limit to 3 lines */
        -webkit-box-orient: vertical;
    }

    .btn-group .btn {
        margin-right: 5px;
    }

    .btn-group .btn:last-child {
        margin-right: 0;
    }
</style>

<div class="breadcrumb-container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Tìm kiếm</li>
        </ol>
    </nav>
</div>

<h2>Bạn đang tìm kiếm với từ khóa: {{ $tukhoa }}</h2>

<div class="album py-5 bg-body-tertiary">
    <div class="container">
        <div class="row card-container">
            @php
                $count = count($truyen);
            @endphp
            @if($count == 0)
                <div class="col-md-3">
                    <div class="card mb-3 box-shadow">
                        <div class="card-body">
                            <p>Không tìm thấy kết quả phù hợp</p>
                        </div>
                    </div>
                </div>
            @else
                @foreach($truyen as $key => $value)
                    <div class="col-md-3">
                        <div class="card mb-3 box-shadow">
                            <img class="card-img-top" src="{{ asset('public/uploads/truyen/'.$value->hinhanh) }}" alt="Image">
                            <div class="card-body">
                                <h4>{{ $value->tentruyen }}</h4>
                                <p class="card-text">{{ $value->tomtat }}</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <a href="{{ url('xem-truyen/'.$value->slug_truyen) }}" class="btn btn-sm btn-outline-secondary">Đọc ngay</a>
                                        <a class="btn btn-sm btn-outline-secondary"><i class="fas fa-eye"></i> 75434</a>
                                    </div>
                                    <small class="text-body-secondary">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
        <a class="btn btn-outline-success" href="#">Xem tất cả</a>
    </div>
</div>
@endsection
