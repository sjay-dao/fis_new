@extends('layouts.backend.admin.app')
@section('title','Equipment\'s - ')
@push('css')
    
@endpush
@section('area')
<div class="col-sm-6">
    <div class="breadcrumbs-area clearfix">
        <h4 class="page-title pull-left">Equipment's</h4>
        <ul class="breadcrumbs pull-left">
            <li><a href="{{route('admin.equipment.index')}}">Equipment</a></li>
            <li><span>Show</span></li>
        </ul>
    </div>
</div>
@endsection
@section('content')
    <div class="main-content-inner"><br>
        <a  href="{{ url()->previous() }}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-chevron-circle-left">&nbsp;</i>Go Back</a>
        <div class="row">
            <!-- seo fact area start -->
                
                <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="card card-bordered">
                            <img class="card-img-top img-fluid" src="{{ asset('storage/equipment/'.$equipment->image)}}" alt="image">
                           
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="card-body">
                            <h5 class="title">{{$equipment->name}}</h5>
                            <p class="card-text">{!!$equipment->description!!}
                            </p>
                        </div>
                    </div>
            <!-- testimonial area end -->
        </div>
    </div>
        </div>
       @endsection 
       @push('js')
       @endpush
  
