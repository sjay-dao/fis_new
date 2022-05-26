@extends('layouts.backend.admin.app')
@section('title','Equipment\'s - ')
@push('css')
<script src="https://cloud.tinymce.com/5/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Equipment</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.equipment.index')}}">Equipment</a></li>
                <li><span>Update</span></li>
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
                    <h5 class="card-header bg-transparent border-default"><i class=" fa fa-plus-circle">&nbsp;</i> Add Equipment</h5><br>
                        <form action="{{route('admin.equipment.update',$equipment->id)}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <h6>Equipment Name</h6>
                            <input type="text" name="name" placeholder="Name Here" class="form-control" value="{{$equipment->name}}">
                            </div>
                            <div class="form-group">
                                <h6>Equipment Description</h6>
                                <textarea class="form-control" style="height:30ch" name="description" placeholder="Description Here">{{$equipment->description}}</textarea>
                            </div>
                            <div class="form-group">
                                <h6>Equipment Image</h6>
                                <input type="file" name="image" class="form-control">
                            </div>
                        <div class="card-footer bg-transparent">
                        <button type="submit" class="btn btn-rounded mb-3 text-white float-right" style="background-color:#bf3e11"><i class="fa fa-database">&nbsp;</i>Save to Database</button>
                        <a href="{{ route('admin.equipment.index') }}"><button type="button" class="btn btn-rounded btn-danger mb-3 text-white float-right"><i class="fa fa-chevron-circle-left">&nbsp;</i>Cancel</button></a>
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
       @endpush
  
