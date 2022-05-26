<!doctype html>
<html lang="en" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <title>@yield('title'){{ config('app.name', 'Laravel') }}</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <link href="{{ asset('img/dost.png')}}" rel="icon">
  <link href="{{ asset('img/dost.png')}}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="{{asset('lib/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="{{asset('lib/nivo-slider/css/nivo-slider.css')}}" rel="stylesheet">
  <link href="{{asset('lib/owlcarousel/owl.carousel.css')}}" rel="stylesheet">
  <link href="{{asset('lib/owlcarousel/owl.transitions.css')}}" rel="stylesheet">
  <link href="{{asset('lib/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
  <link href="{{asset('lib/animate/animate.min.css')}}" rel="stylesheet">
  <link href="{{asset('lib/venobox/venobox.css')}}" rel="stylesheet">
  <link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">

  <!-- Nivo Slider Theme -->
  <link href="{{asset('css/nivo-slider-theme.css')}}" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="{{asset('css/style.css')}}" rel="stylesheet">

  <!-- Responsive Stylesheet File -->
  <link href="{{asset('css/responsive.css')}}" rel="stylesheet">
  @stack('css')
</head>
<body data-spy="scroll" data-target="#navbar-example" > <!--oncontextmenu="return false;"-->
  
<div id="preloader"></div> 
 
@include('layouts.frontend.partials._header')
    
    @yield('content')

@include('layouts.frontend.partials._footer')

  <script src="{{asset('lib/jquery/jquery.min.js')}}"></script>
  <script src="{{asset('lib/bootstrap/js/bootstrap.min.js')}}"></script>
  <script src="{{asset('lib/owlcarousel/owl.carousel.min.js')}}"></script>
  <script src="{{asset('lib/venobox/venobox.min.js')}}"></script>
  <script src="{{asset('lib/knob/jquery.knob.js')}}"></script>
  <script src="{{asset('lib/wow/wow.min.js')}}"></script>
  <script src="{{asset('lib/parallax/parallax.js')}}"></script>
  <script src="{{asset('lib/easing/easing.min.js')}}"></script>
  <script src="{{asset('lib/nivo-slider/js/jquery.nivo.slider.js')}}" type="text/javascript"></script>
  <script src="{{asset('lib/appear/jquery.appear.js')}}"></script>
  <script src="{{asset('lib/isotope/isotope.pkgd.min.js')}}"></script>
  <script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
  {!! Toastr::message() !!}
      <script>
          @if($errors->any())
              @foreach($errors->all() as $error)
                  toastr.error('{{$error}}','Error',{
                      closeButton:true,
                      progressBar:true,
                      positionClass:'toast-bottom-right',
                  });
              @endforeach
          @endif

$('[data-toggle="tooltip"]').tooltip();   

</script>
  <!-- Contact Form JavaScript File -->
  <script src="{{asset('js/contactform.js')}}"></script>

  <script src="{{asset('js/main.js')}}"></script>
  {{-- <script>
  document.onkeydown = function(e) {
if(event.keyCode == 123) {
return false;
}
if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){
return false;
}
if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){
return false;
}
if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){
return false;
}
}</script> --}}

  @stack('js')
</body>

</html>
