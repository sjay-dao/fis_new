@extends('layouts.backend.admin.app')
@section('title','Change Password - ')
@push('css')
    
@endpush
@section('area')
<div class="col-sm-6">
    <div class="breadcrumbs-area clearfix">
        <h4 class="page-title pull-left">Password</h4>
        <ul class="breadcrumbs pull-left">
            <li><a href="{{route('admin.changePassword')}}">Change Password</a></li>
            <li><span>Index</span></li>
        </ul>
    </div>
</div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <a  href="{{ url()->previous() }}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-chevron-circle-left">&nbsp;</i>Go Back</a>
    <form action="{{route('admin.profile.password')}}" method="POST" enctype="multipart/form-data" class="form-control">
        @csrf
        @method('PUT')
        <div class="row justify-content-md-center">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="form-group">
                    <h5 class="card-title"><i class="fa fa-lock">&nbsp;</i>Enter your old Password Please</h5>
                    <input type="password" name="old_password" placeholder="Old Password" class="form-control" required>
                </div>
                <div class="form-group">
                    <h5 class="card-title"><i class="fa fa-unlock">&nbsp;</i>Enter your New Password</h5>
                    <input type="password" name="password" placeholder="New Password" class="form-control" required>
                </div>
                <div class="form-group">
                    <h5 class="card-title"><i class="fa fa-check-circle">&nbsp;</i>Re-Enter Your  New Password</h5>
                    <input type="password" name="password_confirmation" placeholder="Re-Enter your New Password" class="form-control" required>
                </div>
                <center><button class="btn btn-rounded mb-3 text-white button-default">
                   <i class="fa fa-database button-default"></i> Save Change
                </button></center>
            </div>
        </div>
        
    </form>
</div>
@endsection 
@push('js')
@endpush

