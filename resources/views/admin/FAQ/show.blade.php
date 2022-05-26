@extends('layouts.backend.admin.app')
@section('title','FAQ - ')
@push('css')

@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">FAQ</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.FAQ.index')}}">FAQ</a></li>
                <li><span>show</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
    <div class="main-content-inner"><br>
        <div class="row">
           <div class="col-md-12">
                <div class="jumbotron">
                    <h1 class="display-4">{{$faq->question}}</h1><br>
                    <p class="lead">{!!$faq->answer!!}</p>
                </div>
           </div>
        </div>
    </div>
        </div>
       @endsection 
       @push('js')
       
       @endpush
  
