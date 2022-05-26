@extends('layouts.backend.user.app')
@section('title','Creat Product - ')
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
                        <li><a href="index.html">Product</a></li>
                        <li><span>Create</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <form action="{{route('user.product.store')}}" method="POST" enctype="multipart/form-data">
    <div class="row justify-content-md-center">
        @csrf    
        <div class="col-md-10">
            <div class="card text-center">
                <div class="card-header">
                <h3><i class="fa fa-user-plus">&nbsp;</i>Create Product</h3>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Please fill-up all the required(*) information</h5><br>
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-product-hunt">&nbsp;</i>Product Name*</h6>
                            <input type="text" name="name" placeholder="Product Name" class="form-control" required>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-cog">&nbsp;</i>Technology *</h6>
                           <select class="form-control" name="technology">
                               @foreach ($prods as $prod)
                           <option value="{{$prod->product_id}}">{{$prod->name}}</option>
                               @endforeach
                           </select><br>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-tint">&nbsp;</i>Grams/Pack*</h6>
                            <input type="text" name="grams" placeholder="Grams Per Pack" class="form-control" required>
                        </div>
                        <div class="col-md-2 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-tag">&nbsp;</i>Original Price</h6>
                            <input type="text" name="OP" placeholder="Original Price" class="form-control">
                        </div>
                        <div class="col-md-2 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-tag">&nbsp;</i>Markup rate</h6>
                            <input type="text" name="MR" placeholder="rate" class="form-control">
                        </div>
                        <div class="col-md-2 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-tag">&nbsp;</i>final Price</h6>
                            <input type="text" name="FP" placeholder="Price" class="form-control">
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-image">&nbsp;</i>Product Image*</h6>
                            <input type="file" name="image" class="form-control" required><br>
                        </div>
                        <div class="col-sm-12">
                            <h6 class="float-left"><i class="fa fa-book">&nbsp;</i>Description</h6>
                            <textarea class="form-control" name="description" style="height:4cm">Description here</textarea>
                        </div>
                    </div><br>
                <div class="card-footer">
                        <button type="submit" class="btn btn-primary float-right">Save&nbsp;<i class="fa fa-database"></i></button>
                        <a href="{{route('user.product.index')}}" class="btn btn-danger float-left">Cancel&nbsp;<i class="fa fa-arrow-left"></i></a>
                </div>
            </div>
        </div>
    </div>
</form>
</div>
@endsection  
@push('js')

@endpush