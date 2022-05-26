@extends('layouts.backend.admin.app')
@section('title','Technology - ')
@push('css')
    
@endpush
@section('area')
<div class="col-sm-6">
    <div class="breadcrumbs-area clearfix">
        <h4 class="page-title pull-left">Technology</h4>
        <ul class="breadcrumbs pull-left">
            <li><a href="{{route('admin.product.index')}}">technology</a></li>
            <li><span>Show</span></li>
        </ul>
    </div>
</div>
@endsection
@section('content')
    <div class="main-content-inner"><br>
        <div class="row">
            <a  href="{{ url()->previous() }}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-chevron-circle-left">&nbsp;</i>Go Back</a>
        <div class="col-lg-12 col-md-12 mt-12">
            <div class="card card-bordered">
                <div class="row">
                    <div class="col"></div>
                    <div class="col-md-6">
                        <img class="card-img-top img-fluid" src="{{ asset('storage/products/'.$product->image)}}" alt="image">
                    </div>
                    <div class="col"></div>
                </div>
            <div class="card-body">
                <h3 class="title"><strong>{{$product->name}}</strong></h3>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <h5 class="title">Description</h5>
                    <p>{!!$product->description!!}</p>
                </div>
                    <div class="col-lg-12 col-md-12 col-sm-12"><br>
                            <h5 class="title">Procedures</h5>
                            <p>{!!$product->procedure!!}</p>
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
  
