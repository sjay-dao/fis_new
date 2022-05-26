@extends('layouts.backend.user.app')
@section('title','Production - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
@endpush
@section('content')
<div class="container"><br>
    <div class="page-title-area">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="breadcrumbs-area clearfix">
                    <h4 class="page-title pull-left">{{Auth::user()->adoptor->name}}</h4>
                    <ul class="breadcrumbs pull-left">
                        <li><a href="{{route('user.production.index')}}">Production</a></li>
                        <li><span>Create</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <form action="{{route('user.production.store')}}" method="POST">
    <div class="row justify-content-md-center">
        @csrf    
        <div class="col-md-10">
            <div class="card text-center">
                <div class="card-header">
                <h3><i class="fa fa-cogs color-default">&nbsp;</i>Production</h3>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Please fill-up all the required(*) information</h5><br>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <h6 class="float-left"><i class="fa fa-product-hunt">&nbsp;</i>Please Select Product*</h6>
                            <select class="form-control" name="product" id="product">
                                <option value=" ">--Please Select Product From the list--</option>
                                @foreach ($products as $product)
                                    <option value="{{$product->id}}">{{$product->name}}</option>
                                @endforeach
                            </select>
                        </div>
                       
                        <div class="col-md-6"><br>
                            <h6 class="float-left"><i class="fa fa-list">&nbsp;</i>Pack/s Produced*</h6>
                            <input type="number" name="packs" placeholder="Packs Produced" class="form-control" required>
                        </div>
                        <div class="col-md-6"><br>
                            <h6 class="float-left"><i class="fa fa-calendar">&nbsp;</i>Date of Production* </h6>
                            <input type="date" name="date" placeholder="Packs Produced" class="form-control" required><br>
                        </div>
                        
                </div>
                <div class="card-footer">
                        <button type="submit" class="btn btn-primary float-right">Save&nbsp;<i class="fa fa-database"></i></button>
                        <a href="{{route('user.production.index')}}" class="btn btn-danger float-left">Cancel&nbsp;<i class="fa fa-arrow-left"></i></a>
                </div>
            </div>
        </div>
    </div>
</form>
</div>
@endsection  
@push('js')
<script src="{{asset('js/select2.min.js')}}"></script>
<script>
    $(document).ready(function(){
     $('#product').select2({
            
         });  
         $('#client').select2({
            
        });  
    });
</script>
@endpush