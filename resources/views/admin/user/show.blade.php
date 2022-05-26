@extends('layouts.backend.admin.app')
@section('title','Users - ')
@push('css')
    <link rel="stylesheet" href="{{asset('admin/assets/css/profile.css')}}">
@endpush
@section('area')
<div class="col-sm-6">
    <div class="breadcrumbs-area clearfix">
        <h4 class="page-title pull-left">Users</h4>
        <ul class="breadcrumbs pull-left">
        <li><a href="{{route('admin.user.index')}}">user</a></li>
            <li><span>Show</span></li>
        </ul>
    </div>
</div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <div class="row">
            <a  href="{{ url()->previous() }}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-chevron-circle-left">&nbsp;</i>Go Back</a>
        <div class="col-md-12 col-sm-12 col-xs-12 image-section">
            <img src="{{ asset('storage/adoptors/background/'.$user->adoptor->image)}}">
        </div>
        <div class="row user-left-part">
            <div class="col-md-3 col-sm-3 col-xs-12 user-profil-part pull-left">
                <div class="row ">
                    <div class="col-md-12 col-md-12-sm-12 col-xs-12 user-image text-center">
                        <img src="{{ asset('storage/users/'.$user->image)}}" class="rounded-circle">
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12 user-detail-section1 text-center">
                        <button class="btn btn-success btn-block follow"><i class="fa fa-user color-default">&nbsp;</i>{{strtoupper($user->name)}}</button> 
                        <button class="btn btn-warning btn-block"><i class="fa fa-google-plus color-default">&nbsp;</i>{{$user->email}}</button>                               
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-sm-9 col-xs-12 pull-right profile-right-section">
                <div class="row profile-right-section-row">
                    <div class="col-md-12 profile-header">
                        <div class="row">
                            <div class="col-md-8 col-sm-6 col-xs-6 profile-header-section1 pull-left">
                                <h1>{{$user->adoptor->name}}</h1>
                                <h5>{{$user->adoptor->address}}</h5>
                            </div>
                           
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-8">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#profile" role="tab" data-toggle="tab"><i class="fas fa-user-circle"></i> Personal Information</a>
                                    </li>
                                </ul>
                                <div class="tab-content form-control">
                                    <div class="form-group">
                                       <label>Full Name</label>
                                       <p class="form-control">{{$user->name}}</p>
                                    </div>
                                    <div class="form-group">
                                        <label>Username</label>
                                        <p class="form-control">{{$user->username}}</p>
                                    </div>
                                    <div class="form-group">
                                        <label>email</label>
                                        <p class="form-control">{{$user->email}}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 img-main-rightPart">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row image-right-part">
                                            <div class="col-md-6 pull-left image-right-detail">
                                                <h6>Adoptor</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 image-right">
                                        <img src="{{ asset('storage/adoptors/'.$user->adoptor->image)}}">
                                    </div>
                                    <div class="col-md-12 image-right-detail-section2"><br>
                                        {!!substr(strip_tags($user->adoptor->about), 0, 200)!!}
                                        <br>
                                        <a  href="{{route('admin.adoptor.show',$user->adoptor->id)}}" class="btn btn-rounded float-right text-white button-default">See more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
       @endsection 
       @push('js')
       <script src="{{asset('admin/assets/js/profile.js')}}"></script>
       @endpush
  
