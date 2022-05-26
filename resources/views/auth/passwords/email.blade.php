<!doctype html>
<html lang="en" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <title>@yield('title'){{ config('app.name', 'eTransmotion') }}</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <link href="img/dost.png" rel="icon">
        <link rel="shortcut icon" type="image/png" href="{{asset('img/dost.png')}}">
        <link rel="stylesheet" href="{{asset('admin/assets/css/bootstrap.min.css')}}">
        <link rel="stylesheet" href="{{asset('admin/assets/css/font-awesome.min.css')}}">
        <link rel="stylesheet" href="{{asset('admin/assets/css/themify-icons.css')}}">
        <link rel="stylesheet" href="{{asset('admin/assets/css/metisMenu.css')}}">
        <link rel="stylesheet" href="{{asset('admin/assets/css/owl.carousel.min.css')}}">
        <link rel="stylesheet" href="{{asset('admin/assets/css/slicknav.min.css')}}">
        <!-- amchart css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- others css -->
        <link rel="stylesheet" href="{{asset('admin/assets/css/typography.css')}}">
        <link rel="stylesheet" href="{{asset('admin/assets/css/default-css.css')}}">
        <link rel="stylesheet" href="{{asset('admin/assets/css/styles.css')}}">
        <link rel="stylesheet" href="{{asset('admin/assets/css/responsive.css')}}">
        <link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
        <link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        @stack('css')
        <!-- modernizr css -->
        <script src="{{asset('admin/assets/js/vendor/modernizr-2.8.3.min.js')}}"></script>
        <style>
        .login-bg {
    background: url(../img/slider/bldg3.jpg) center/cover no-repeat;
    position: relative;
    z-index: 1;
}
        </style>
    </head>
<body data-spy="scroll" data-target="#navbar-example">

 
<header>
    <div id="sticker" class="header-area" style="background-color:rgb(232, 71, 27)    ">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12">
            <nav class="navbar navbar-default">
           
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1" id="navbar-example">
                <ul class="nav navbar-nav navbar-right">
                  <li class="active">
                    <a class="page-scroll" href="#home"><i class="fa fa-sign-in">&nbsp;</i>login</a>
                  </li>
                  <li>
                </ul>
              </div>
              <!-- navbar-collapse -->
            </nav>
            <!-- END: Navigation -->
          </div>
        </div>
      </div>
    </div>
          <!-- header-area end -->
        </header>
        <body>

                <div class="login-area login-bg">
                        <div class="container">
                            <div class="login-box ptb--100">
                                    <form method="POST" action="{{ route('password.email') }}">
                                    @csrf
                                    <div class="login-form-head"  style="background-color:rgb(232, 71, 27); color:white">
                                        <h4>{{ __('Reset Password') }}</h4>
                                        <p>reset password page</p>
                                    </div>
                                    <div class="login-form-body">
                                        <div class="form-gp">
                                    
                                            <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus placeholder="Email Address">
                                            @if ($errors->has('email'))
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('email') }}</strong>
                                                </span>
                                            @endif
                                            <i class="ti-email"></i>
                                        </div>
                                      
                                       
                                        <div class="submit-btn-area">
                                            <button style="background-color:rgb(232, 71, 27); color:white" type="submit" class="btn btn-primary">
                                                    {{ __('Send Password Reset Link') }}<i class="ti-arrow-right "></i> 
                                                </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>


                <footer id="about">
                        <div class="footer-area">
                          <div class="container" id="contact">
                            
                        </div>
                      </footer>
                   
            
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
            
              <!-- Contact Form JavaScript File -->
              <script src="{{('js/contactform.js')}}"></script>
            
              <script src="js/main.js"></script>
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
            </script>
              @stack('js')
            </body>
            
            </html>



{{-- @extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Reset Password') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Send Password Reset Link') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection --}}
