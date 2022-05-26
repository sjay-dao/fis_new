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
                        <li><span>Update</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <form action="{{route('user.product.update',$prod->id)}}" method="POST" enctype="multipart/form-data">
    <div class="row justify-content-md-center">
        @method('PUT')
        @csrf    
        <div class="col-md-10">
            <div class="card text-center">
                <div class="card-header">
                <h3><i class="fa fa-refresh">&nbsp;</i>Update Product</h3>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Please fill-up all the required(*) information</h5><br>
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-product-hunt">&nbsp;</i>Product Name*</h6>
                        <input type="text" name="name" placeholder="Product Name" class="form-control" required value="{{$prod->name}}">
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-cog">&nbsp;</i>Technology *</h6>
                           <select class="form-control" name="technology">
                               @foreach ($prods as $p)
                           <option value="{{$p->product_id}}">{{$p->name}}</option>
                               @endforeach
                           </select><br>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-tint">&nbsp;</i>Grams/Pack*</h6>
                            <input type="text" name="grams" placeholder="Grams Per Pack" class="form-control" required value="{{$prod->grams}}">
                        </div>
                        <div class="col-md-2 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-tag">&nbsp;</i>Original Price</h6>
                            <input type="text" name="OP" placeholder="Original Price" class="form-control" value="{{$prod->originalPrice}}">
                        </div>
                        <div class="col-md-2 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-tag">&nbsp;</i>Markup rate</h6>
                            <input type="text" name="MR" placeholder="rate" class="form-control" value="{{$prod->markUpPrice}}">
                        </div>
                        <div class="col-md-2 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-tag">&nbsp;</i>final Price</h6>
                            <input type="text" name="FP" placeholder="Price" class="form-control" value="{{$prod->finalPrice}}">
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-image">&nbsp;</i>Product Image*</h6>
                            <input type="file" name="image" class="form-control"><br>
                        </div>
                        <div class="col-sm-12">
                            <h6 class="float-left"><i class="fa fa-book">&nbsp;</i>Description</h6>
                            <textarea class="form-control" name="description" style="height:4cm">{!!$prod->description!!}</textarea>
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