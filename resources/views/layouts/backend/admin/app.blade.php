<!doctype html>
<html lang="en" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <title>@yield('title'){{ config('app.name', 'Laravel') }}</title>
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
    </head>
    
    <body>
            <!--[if lt IE 8]>
                    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
                <![endif]-->
            <!-- preloader area start -->
            <div id="preloader">
                <div class="loader"></div>
            </div>
@include('layouts.backend.admin.partials._header')
    
    @yield('content')

@include('layouts.backend.admin.partials._footer')
  <!-- offset area end -->
    <!-- jquery latest version -->
    
    <script src="{{asset('admin/assets/js/vendor/jquery-2.2.4.min.js')}}"></script>
    <!-- bootstrap 4 js -->
     <!-- others plugins -->
     <script src="{{asset('admin/assets/js/plugins.js')}}"></script>
     <script src="{{asset('admin/assets/js/scripts.js')}}"></script>
    <script src="{{asset('admin/assets/js/popper.min.js')}}"></script>
    <script src="{{asset('admin/assets/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('admin/assets/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('admin/assets/js/metisMenu.min.js')}}"></script>
    <script src="{{asset('admin/assets/js/jquery.slimscroll.min.js')}}"></script>
    <script src="{{asset('admin/assets/js/jquery.slicknav.min.js')}}"></script>

    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <!-- start amcharts -->
    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/ammap.js"></script>
    <script src="https://www.amcharts.com/lib/3/maps/js/worldLow.js"></script>
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <!-- all line chart activation -->
    <script src="{{asset('admin/assets/js/line-chart.js')}}"></script>
    <!-- all pie chart -->
    <script src="{{asset('admin/assets/js/pie-chart.js')}}"></script>
    <!-- all bar chart -->
    <script src="{{asset('admin/assets/js/bar-chart.js')}}"></script>
    <!-- all map chart -->
    <script src="{{asset('admin/assets/js/maps.js')}}"></script>
   
    <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
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
       
    @stack('js')
</body>

</html>

