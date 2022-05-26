@extends('layouts.backend.user.app')
@section('title','Product Details - ')
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
                        <li><span>Details</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-md-center">
        <div class="card text-center">
            <div class="card-header">
                <h3><i class="fa fa-info">&nbsp;</i>Product <i class="fa fa-info color-default"></i>nformation</h3>
            </div>
            <div class="card-body">
                <div class="form-control">
                    <label><i class="fa fa-product-hunt">&nbsp;</i>Product</label>
                    <h6><strong></strong></h6>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection  
@push('js')

@endpush