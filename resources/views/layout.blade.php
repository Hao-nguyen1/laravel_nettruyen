<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Net Truyen</title>

    	<link href="{{ asset('css/app.css') }}" rel="stylesheet">

    	<link href="{{ asset('css/owl.carousel.min.css') }}" rel="stylesheet">
    	<link href="{{ asset('css/owl.theme.default.min.css') }}" rel="stylesheet">

    	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">


    </head>
    <body>
    	<div class="container">
<!-----------Menu------------->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Nettruyen.com</a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="{{url('/')}}">Trang chủ<span class="sr-only">(current)</span></a>
      </li>

      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Danh mục truyện
        </a>
        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
          @foreach($danhmuc as $key => $danh)
          <li>
            <a class="dropdown-item" href="{{url('danh-muc/'.$danh->slug_danhmuc)}}">{{$danh->tendanhmuc}}</a>
          </li>
          @endforeach
        </ul>
      </li>

      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Thể loại
        </a>
        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
          @foreach($theloai as $key => $the)
          <li>
            <a class="dropdown-item" href="{{url('the-loai/'.$the->slug_theloai)}}">{{$the->tentheloai}}</a>
          </li>
          @endforeach
        </ul>
      </li>
    </ul>
  <div class="row">
    <div class="col-md-12">
    <form autocomplete="off" class="d-flex ms-auto" action="{{url('tim-kiem')}}" method="GET">

      <input class="form-control me-2" type="search" id="keywords" name="tukhoa"  placeholder="Tìm kiếm tác giả, truyện..." aria-label="Search">
      <div id="search_ajax"></div>
      <button class="btn btn-outline-success" type="submit">Tìm kiếm</button>
    </form>
    </div>
  </div>
  </div>
</nav>



		<!--------------------Slide-----------------> 
		@yield('slide')


		<!-----------------Sách mới----------------->
		@yield('content')

		<!-------------- Footer ---------------->
		<footer class="text-body-secondary py-5">
		  <div class="container">
		    <p class="float-end mb-1">
		      <a href="#">Back to top</a>
		    </p>
		    <p class="mb-1">Album example is © Bootstrap, but please download and customize it for yourself!</p>
		    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.3/getting-started/introduction/">getting started guide</a>.</p>
		  </div>
		</footer>


		</div>
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="{{ asset('js/owl.carousel.js') }}" defer></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"></script>
	<script src="//cdn.ckeditor.com/4.22.1/full/ckeditor.js"></script>

<script type="text/javascript">
    $('#keywords').keyup(function(){
      var query = $(this).val();


      if(query != '') {
        var _token = $('input[name="_token"]').val();
        
        $.ajax({
          url: "{{ url('/timkiem-ajax') }}",
          method: "POST",
          data: { query: query, _token: _token },
          success: function(data) {
            $('#search_ajax').fadeIn(); // Corrected selector to fadeIn()
            $('#search_ajax').html(data);
          }
        });
      } else {
        $('#search_ajax').fadeOut(); // Corrected syntax for fadeOut()
      }
    });

    $(document).on('click', '.li_search_ajax', function(){
      $('#keywords').val($(this).text());
      $('#search_ajax').fadeOut(); // Corrected syntax for fadeOut()
    });
  </script>


    <script type="text/javascript">
		$('.owl-carousel').owlCarousel({
		    loop:true,
		    margin:10,
		    // nav:true,
		    responsive:{
		        0:{
		            items:1
		        },
		        600:{
		            items:3
		        },
		        1000:{
		            items:5
		        }
		    }
		})
    </script>
    <script type="text/javascript">
    	$('.select-chapter').on('change', function(){
    		var url = $(this).val();
			if(url){
				window.location = url;
			}
			return false;
    	});

    	current_chapter();

    	function current_chapter() {
    		var url = window.location.href;
    		$('.select-chapter').find('option[value="'+url+'"]').attr("selected", true);
    	}
    </script>

<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v20.0" nonce="pyP0RQul"></script>



    </body>
</html>
