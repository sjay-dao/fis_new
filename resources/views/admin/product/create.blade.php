@extends('layouts.backend.admin.app')
@section('title','Products - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
<script src="https://cloud.tinymce.com/5/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Technology</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.product.index')}}">technology</a></li>
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
                    <h5 class="card-header bg-transparent border-default"><i class=" fa fa-plus-circle">&nbsp;</i> Add Technology</h5>
                        <form action="{{route('admin.product.store')}}" method="POST" class="form-control" enctype="multipart/form-data">
                            @csrf
                           <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-12">
                                <div class="form-group">
                                        <h6><i class="fa fa-product-hunt color-default">&nbsp;</i>Technology Name</h6>
                                        <input type="text" name="name" placeholder="Name Here" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                        <h6><i class="fa fa-image color-default">&nbsp;</i>Technology image</h6>
                                        <input type="file" name="image" class="form-control">
                                    </div>
                                    {{-- <div class="form-group col-lg-6 col-md-6 col-sm-12">
                                        <h6><i class="fa fa-industry color-default">&nbsp;</i>Raw Materials</h6>
                                        <select class="form-control" id="rawMat" name="rawMats[]" multiple="multiple">
                                            @foreach ($rawMaterials as $key=> $rawMat)
                                                    <option value="{{$rawMat->id}}">{{$rawMat->name}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    {{-- <div class="form-group col-lg-6 col-md-6 col-sm-12">
                                        <h6><i class="fa fa-cogs color-default">&nbsp;</i>Equipment's</h6>
                                            <select class="form-control" id="equipment" name="equipments[]" multiple="multiple">
                                                @foreach ($equipments as $key=> $equipments)
                                                        <option value="{{$equipments->id}}" class="form-control">{{$equipments->name}}</option>
                                                @endforeach
                                            </select>
                                    </div> --}}
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="form-group">
                                            <h6><i class="fa fa-file-text-o color-default">&nbsp;</i>Technology Description</h6>
                                            <textarea class="form-control" style="height:30ch" name="description" placeholder="Description Here"></textarea>
                                        </div>
                                       
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <h6><i class="fa fa-list-ol color-default">&nbsp;</i>Technology Procedures</h6>
                                        <textarea class="form-control" style="height:30ch" name="procedure" placeholder="Procedure Here"></textarea>
                                    </div>
                                </div>
                           </div>
                        <div class="card-footer bg-transparent">
                        <button type="submit" class="btn btn-rounded mb-3 text-white float-right" style="background-color:#bf3e11"><i class="fa fa-database">&nbsp;</i>Save to Database</button>
                        <a href="{{ url()->previous() }}"><button type="button" class="btn btn-rounded btn-danger mb-3 text-white float-right"><i class="fa fa-chevron-circle-left">&nbsp;</i>Cancel</button></a>    
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
  
