@extends('layouts.backend.user.app')
@section('title','Change Password - ')
@push('css')
    
@endpush
@section('area')
<div class="col-sm-6">
    <div class="breadcrumbs-area clearfix">
        <h4 class="page-title pull-left">Password</h4>
        <ul class="breadcrumbs pull-left">
            <li><a href="{{route('user.changePassword')}}">Change Password</a></li>
            <li><span>Index</span></li>
        </ul>
    </div>
</div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <a  href="{{ url()->previous() }}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-chevron-circle-left">&nbsp;</i>Go Back</a>
        <div class="card">
            <div class="card-header">
                <h6><i class="fa fa-lock">&nbsp;</i>Change Password</h6>
            </div>
            <div class="card-body">
                <form action="{{route('user.profile.password')}}" method="POST" enctype="multipart/form-data" class="form-control">
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
        </div>
        </div>
    </div>
</div>
@endsection 
@push('js')
@endpush

