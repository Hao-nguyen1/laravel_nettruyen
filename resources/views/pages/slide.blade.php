<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sách hay nên đọc</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .owl-carousel .item {
            background: #fff;
            padding: 20px;
            margin: 10px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 400px; /* Fixed height for all items */
            overflow: hidden;
        }
        .owl-carousel .item img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            max-height: 200px;
            object-fit: cover;
        }
        .owl-carousel .item h3 {
            font-size: 1.5em;
            margin: 10px 0;
            flex-grow: 1;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .owl-carousel .item p {
            font-size: 1em;
            color: #666;
            margin: 10px 0;
        }
        .owl-carousel .item .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1em;
            color: #fff;
            background-color: #dc3545;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .owl-carousel .item .btn:hover {
            background-color: #c82333;
        }
    </style>
    <!-- Include Owl Carousel CSS and JS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script>
        $(document).ready(function(){
            $(".owl-carousel").owlCarousel({
                items: 3,
                margin: 10,
                loop: true,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 2
                    },
                    1000: {
                        items: 3
                    }
                }
            });
        });
    </script>
</head>
<body>

    <div class="owl-carousel owl-theme">
        @foreach($truyen as $key => $value)
            <div class="item">
                <img src="{{asset('public/uploads/truyen/'.$value->hinhanh)}}" alt="Image">
                <h3>{{$value->tentruyen}}</h3>
                <p><i class="fas fa-eye"></i> {{$value->views}}</p>
                <a href="" class="btn btn-danger">Đọc ngay</a>
            </div>
        @endforeach
    </div>
</body>
</html>
