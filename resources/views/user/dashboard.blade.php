
@extends('layouts.backend.user.app')
@section('title','Dashboard - ')
@push('css')
<style>
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background: rgba(64, 64, 64, 0.8);
  padding: 5px;
  text-align: center;
   
}
</style>
@endpush
@section('content')
<div class="w3-content w3-display-container">
   
      <img src="{{asset('storage/adoptors/background/'.Auth::user()->adoptor->image)}}" style="width:100%">
      <div class="centered"><h1 style="color:white">{{Auth::user()->adoptor->name}}</h1></div>
        <div class="main-content-inner">
            <div class="container">
                <div class="row">
                    <!-- seo fact area start -->
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-md-3 mt-3 mb-3">
                                <div class="card">
                                    <div class="seo-fact sbg1">
                                        <a href="{{route('user.rawMaterial.index')}}" class="p-4 d-flex justify-content-between align-items-center">
                                            <div class="seofct-icon"><i class="fa fa-industry color-default"></i> Raw Materials</div>
                                            <h2>{{$rawMats->count()}}</h2>
                                        </a>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mt-3 mb-3">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <a href="{{route('user.technology.index')}}" class="p-4 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-child color-default"></i>Technology Adopted</div>
                                                <h2>{{$techs->count()}}</h2>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 mt-3 mb-3">
                                        <div class="card">
                                            <div class="seo-fact sbg3">
                                                <a href="{{route('user.product.index')}}" class="p-4 d-flex justify-content-between align-items-center">
                                                    <div class="seofct-icon"><i class="fa fa-product-hunt color-default"></i>Products</div>
                                                <h2>{{$prod->count()}}</h2>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                            <div class="col-md-3 mt-md-3 mb-3">
                                <div class="card">
                                    <div class="seo-fact sbg4">
                                        <a href="{{route('user.equipment.index')}}" class="p-4 d-flex justify-content-between align-items-center">
                                            <div class="seofct-icon"><i class="fa fa-cogs color-default"></i>Equipment</div>
                                            <h2>{{$equipment->count()}}</h2>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Sales</h4>
                                <canvas id="myAreaChart" style="width:100%; height:350px"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">DataTable</h4>
                                <table class="table table-hover progress-table text-center">
                                    <thead class="thead-inverse">
                                        <tr>
                                            <th>#</th>
                                            <th><i class="fa fa-calendar">&nbsp;</i>Month</th>
                                            <th>Total Sale</th>
                                        </tr>
                                        </thead>
                                        <tbody id="dataTable">
                                           
                                        </tbody>
                                    </table>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- main content area end -->
     @endsection  
     @push('js')
     <script src="{{asset('admin/assets/js/jquery.min.js')}}"></script>
    <script src="{{asset('admin/assets/js/chart.min.js')}}"></script>
    <script src="{{asset('admin/assets/js/chart.js')}}"></script>
    <script>
        //  $('.table').DataTable();
                     $.ajax({
                        type: 'get',
                        dataType:'html',
                        url: '{{url('user/salesData')}}',
                        success:function(data){
                            $("#dataTable").html(data);
                        } 
                    });
    </script>
       @endpush