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
<div id="preloader"></div> 
 
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
      {{-- <div id="home" class="slider-area">
        <div id="adaptors" class="blog-area">
                <div class="blog-inner area-padding">
                    <div class="card mb-3">
                      <BR>
                        <div class="card-body">
                            <h5 class="card-title">LOG IN</h5>
                            <div class="col-md-6 col-md-offset-3">
                            <div class="well">
                                    <form method="POST" action="{{ route('login') }}">
                                            @csrf
                    
                                            <div class="form-group row">
                                                <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>
                    
                                                <div class="col-md-6">
                                                    <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>
                    
                                                    @if ($errors->has('email'))
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $errors->first('email') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>
                    
                                            <div class="form-group row">
                                                <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>
                    
                                                <div class="col-md-6">
                                                    <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                    
                                                    @if ($errors->has('password'))
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $errors->first('password') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>
                    
                                            <div class="form-group row">
                                                <div class="col-md-6 offset-md-4">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                    
                                                        <label class="form-check-label" for="remember">
                                                            {{ __('Remember Me') }}
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                    
                                            <div class="form-group row mb-0">
                                                <div class="col-md-8 offset-md-4">
                                                    <button type="submit" class="btn btn-primary">
                                                        {{ __('Login') }}
                                                    </button>
                    
                                                    @if (Route::has('password.request'))
                                                        <a class="btn btn-link" href="{{ route('password.request') }}">
                                                            {{ __('Forgot Your Password?') }}
                                                        </a>
                                                    @endif
                                                </div>
                                            </div>
                                        </form>
                            </div>
                        </div>
                        </div>
                        </div>
                </div>
        </div>
</div> --}}
<div class="login-area login-bg">
    <div class="container">
        <div class="login-box ptb--100">
            <form method="POST" action="{{ route('login') }}">
                @csrf
                <div class="login-form-head"  style="background-color:rgb(232, 71, 27); color:white">
                    <h4>Sign In</h4>
                    <p>Hello there,Welcome to eTransmotion Website</p>
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
                    <div class="form-gp">
                       
                        <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required placeholder="Password">
                        @if ($errors->has('password'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                        <i class="ti-lock"></i>
                    </div>
                    <div class="row mb-4 rmber-area">
                        <div class="col-6">
                            <div class="custom-control custom-checkbox mr-sm-2">
                                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label class="form-check-label" for="remember">
                                    {{ __('Remember Me') }}
                                </label>
                            </div>
                        </div>
                        <div class="col-6 text-right">
                            @if (Route::has('password.request'))
                        <a href="{{ route('password.request') }}">
                            {{ __('Forgot Your Password?') }}
                        </a>
                    @endif
                        </div>
                    </div>
                    <div class="submit-btn-area">
                        <button  style="background-color:rgb(232, 71, 27); color:white" id="form_submit " type="submit"> {{ __('Login') }}<i class="ti-arrow-right "></i></button>
                        
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

