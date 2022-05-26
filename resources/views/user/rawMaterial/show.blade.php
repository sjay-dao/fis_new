@extends('layouts.backend.admin.app')
@section('title','Raw Material Show - ')
@push('css')
    
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Raw Materials</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.rawMaterial.index')}}">Raw Material</a></li>
                <li><span>Show</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
    <div class="main-content-inner"><br>
        <div class="row">
            <!-- seo fact area start -->
            <div class="col-lg-12 col-md-12 col-sm-12">
                <a  href="{{ url()->previous() }}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-chevron-circle-left">&nbsp;</i>Go Back</a>
                <div class="card border-success mb-3">                       
                    <div class="card-body">
                            <h4 class="header-title"><i class="fa fa-info">&nbsp;</i>Raw Material information</h4>
                            <div class="additional-content">
                                <div class="alert alert-success" role="alert">
                                    <h4 class="alert-heading">{{$rawMat->name}}</h4>
                                    <hr>
                                    <p class="mb-0">{!!$rawMat->description!!}</p>
                                </div>
                            </div>
                        </div>
                    

                </div>
            </div>
            <!-- testimonial area end -->
        </div>
    </div>
        </div>
       @endsection 
       @push('js')
       @endpush
  
