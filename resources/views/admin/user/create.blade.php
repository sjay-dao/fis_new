@extends('layouts.backend.admin.app')
@section('title','Users - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left"><i class="fa fa-users">&nbsp;</i>Users</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.user.index')}}">user</a></li>
                <li><span>create</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
    <div class="main-content-inner"><br>
        <div class="row">
            <!-- seo fact area start -->
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card border-success mb-3">
                    <h5 class="card-header bg-transparent border-default"><i class=" fa fa-plus-circle">&nbsp;</i> Add User</h5>
                    <form action="{{route('admin.user.store')}}" method="POST" class="form-control" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12">
                                <div class="card"><br><br><br>
                                    <p class="card-img-top" alt="Card image cap"><center><i class="fa fa-user-plus fa-5x color-default"></i></center></p>
                                    <div class="card-body">
                                        <h5 class="card-title"><i class="fa fa-image color-default">&nbsp;</i>Profile Picture</h5>
                                        <input type="file" name="image" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <h6><i class="fa fa-user color-default">&nbsp;</i>Full Name</h6>
                                            <input type="text" name="name" placeholder="Name Here" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <h6><i class="fa fa-user-secret color-default">&nbsp;</i>Username</h6>
                                            <input type="text" name="username" placeholder="Username" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <h6><i class="fa fa-envelope color-default">&nbsp;</i>email</h6>
                                            <input type="text" name="email" placeholder="email address " class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <h6><i class="fa fa-lock color-default">&nbsp;</i>Password</h6>
                                            <input type="password" name="password" class="form-control" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <h6><i class="fa fa-check-circle color-default">&nbsp;</i>Re-Enter Password</h6>
                                            <input type="password" name="password_confirmation" class="form-control" placeholder="Re-Enter Password">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <h6><i class="fa fa-child color-default">&nbsp;</i>Adoptor</h6>
                                            <select class="form-control" id="rawMat" name="adoptor">
                                                <option class="0">--Please Sleect Adoptor--</option>
                                                @foreach ($adoptors as $key=> $adoptor)
                                                        <option value="{{$adoptor->id}}">{{$adoptor->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer bg-transparent">
                                    <button type="submit" class="btn btn-rounded mb-3 text-white float-right button-default"><i class="fa fa-database">&nbsp;</i>Save to Database</button>
                                    <a href="{{ url()->previous() }}"><button type="button" class="btn btn-rounded btn-danger mb-3 text-white float-right"><i class="fa fa-chevron-circle-left">&nbsp;</i>Cancel</button></a>    
                                </div>
                            </div>
                    </form>
                </div>
            </div>
            <!-- testimonial area end -->
        </div>
    </div>
        </div>
       @endsection 
       @push('js')
       <script src="{{asset('js/select2.min.js')}}"></script>
       <script>
           $(document).ready(function(){
               $('#rawMat').select2({
                   placeholder : "Select Raw Materials"
               });
               $('#equipment').select2({
                   placeholder : "Select Equipment's"
               });
           });
       </script>
       @endpush
  
