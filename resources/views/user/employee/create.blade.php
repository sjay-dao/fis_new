@extends('layouts.backend.user.app')
@section('title','Creat Employee - ')
@push('css')

@endpush
@section('content')
<div class="container"><br>
    <div class="page-title-area">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <div class="breadcrumbs-area clearfix">
                        <h4 class="page-title pull-left">{{Auth::user()->adoptor->name}}</h4>
                        <ul class="breadcrumbs pull-left">
                        <li><a href="{{route('user.employee.index')}}">Employees</a></li>
                            <li><span><i class=" fa fa-user-plus color-default">&nbsp;</i>Create</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    <form action="{{route('user.employee.store')}}" method="POST" enctype="multipart/form-data">
    <div class="row justify-content-md-center">
        @csrf    
        <div class="col-md-10">
            <div class="card text-center">
                <div class="card-header">
                <h3><i class="fa fa-user-plus">&nbsp;</i>Create Employee</h3>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Please fill-up all the required(*) information</h5><br>
                    <div class="row">
                        <div class="col-md-4 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-user">&nbsp;</i>First Name*</h6>
                            <input type="text" name="firstName" placeholder="First Name" class="form-control" required>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-user">&nbsp;</i>Middle Name</h6>
                            <input type="text" name="middleName" placeholder="Middle Name" class="form-control" >
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-user">&nbsp;</i>Last Name*</h6>
                            <input type="text" name="lastName" placeholder="Last Name" class="form-control" required>
                        </div>
                    </div>
                    <div class="clear-fix"><br></div>
                    <div class="row">
                        <div class="col-md-4 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-envelope">&nbsp;</i>Email</h6>
                            <input type="email" name="email" placeholder="Email Address" class="form-control">
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-phone-square">&nbsp;</i>Contact Number*</h6>
                            <input type="number" name="contactNo" placeholder="09XXXXXXXXX" class="form-control" required>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-user">&nbsp;</i>Position*</h6>
                            <input type="text" name="position" placeholder="Position" class="form-control" required>
                        </div>
                    </div>
                    <div class="clear-fix"><br></div>
                    <div class="row">
                        <div class="col-md-3 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-user-plus">&nbsp;</i>Age*</h6>
                            <input type="number" name="age" placeholder="Age" class="form-control" required>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-genderless">&nbsp;</i>Gender*</h6>
                            <select class="form-control" name="gender" required>
                                <option>--Select Gender--></option>
                                <option value="1">Male</option>
                                <option value="0">Female</option>
                            </select>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-font-awesome">&nbsp;</i>Nationality*</h6>
                            <input type="text" name="nationality" placeholder="nationality" class="form-control" value="Filipino" required>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-image">&nbsp;</i>Picture*</h6>
                            <input type="file" name="image" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                        <button type="submit" class="btn btn-primary float-right">Save&nbsp;<i class="fa fa-database"></i></button>
                        <a href="{{route('user.employee.index')}}" class="btn btn-danger float-left">Cancel&nbsp;<i class="fa fa-arrow-left"></i></a>
                </div>
            </div>
        </div>
    </div>
</form>
</div>
@endsection  
@push('js')

@endpush