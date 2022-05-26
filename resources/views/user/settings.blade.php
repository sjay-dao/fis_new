@extends('layouts.backend.user.app')
@section('title','Settings - ')
@push('css')
    
@endpush
@section('area')
<div class="col-sm-6">
    <div class="breadcrumbs-area clearfix">
        <h4 class="page-title pull-left">Settings</h4>
        <ul class="breadcrumbs pull-left">
            <li><a href="{{route('admin.settings')}}">Settings</a></li>
            <li><span>Index</span></li>
        </ul>
    </div>
</div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <a  href="{{ url()->previous() }}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-chevron-circle-left">&nbsp;</i>Go Back</a>
    <form action="{{route('user.profile.update')}}" method="POST" enctype="multipart/form-data" class="form-control">
        @csrf
        @method('PUT')
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="{{asset('storage/users/'.Auth::user()->image)}}" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fa fa-image color-default">&nbsp;</i>Profile Picture</h5>
                        <input type="file" name="image" class="form-control">
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-12">
                <div class="form-group">
                    <h5 class="card-title"><i class="fa fa-user color-default">&nbsp;</i> Full Name</h5>
                    <input type="text" placeholder="Full Name" class="form-control" name="name" value="{{Auth::user()->name}}">
                </div>
                <div class="form-group">
                    <h5 class="card-title"><i class="fa fa-user-secret color-default">&nbsp;</i> Username</h5>
                    <input type="text" placeholder="username" class="form-control" name="username" value="{{Auth::user()->username}}">
                </div>
                <div class="form-group">
                    <h5 class="card-title"><i class="fa fa-envelope color-default">&nbsp;</i> Email</h5>
                    <input type="email" placeholder="Email" class="form-control" name="email" value="{{Auth::user()->email}}">
                </div>
                <center>
                    <button class="btn btn-rounded mb-3 text-white button-default">
                        <i class="fa fa-save">&nbsp;</i> Save Changes
                    </button>
                </center>
            </div>
        </div>
        
    </form>
</div>
@endsection 
@push('js')
@endpush

