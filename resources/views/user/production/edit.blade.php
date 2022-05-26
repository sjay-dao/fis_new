@extends('layouts.backend.user.app')
@section('title',' Update Production - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
<script src="https://cloud.tinymce.com/5/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>
@endpush

@section('content')
<div class="container"><br>
    <div class="col-sm-12">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Production</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('user.production.index')}}">Production</a></li>
                <li><span>Update</span></li>
            </ul>
        </div>
    </div>
    <div class="main-content-inner"><br>
        <div class="col-md-12">
                <form action="{{route('user.production.update',$production->id)}}" method="POST">
                <div class="card">
                    <div class="card-header">
                        <h4><i class="fa fa-cogs color-default">&nbsp;</i> Update Production</h4>
                    </div>
                    <div class="card-body form-control">
                            @csrf
                            @method('PUT')
                           <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <h6>
                                            <i class="fa fa-product-hunt"></i>
                                            Please select Product</h6>
                                        <select class="form-control dynamic" name="product" id="product" data-dependent="state" required>
                                            <option>--Please Select Product--</option>
                                            @foreach ($data as $data)
                                                <option
                                                {{ $production->product_id == $data->id ? 'selected' : ''}}
                                                value="{{$data->id}}">{{$data->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                    <div class="form-group">
                                        <h6>
                                            <i class="fa fa-tags">&nbsp;</i> 
                                            Packs Produced *</h6>
                                        <input type="number" placeholder="total Packs Produced" class="form-control" name="PP" required value="{{$production->packsProduced}}">
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                        <div class="form-group">
                                        <h6>
                                            <i class="fa fa-balance-scale">&nbsp;</i> 
                                            Grams/pack *</h6>
                                        <input type="text" placeholder="Grams per pack" class="form-control" name="GP" required value="{{$production->grams}}">
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                    <div class="form-group">
                                        <h6>
                                            <i class="fa fa-tag">&nbsp;</i> 
                                            Original Price *</h6>
                                        <input type="text" placeholder="Original Price per pack" class="form-control" name="OP" required value="{{$production->originalPrice}}">
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                    <div class="form-group">
                                        <h6>
                                            <i class="fa fa-tag">&nbsp;</i> 
                                            Markup rate (optional)</h6>
                                        <input type="text" placeholder="Mark up rate per pack" class="form-control" name="MR" value="{{$production->markUpRate}}">
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                    <div class="form-group">
                                        <h6>
                                            <i class="fa fa-tag">&nbsp;</i> 
                                            Final price (optional)</h6>
                                        <input type="text" placeholder="Mark up price per pack" class="form-control" name="FP" value="{{$production->finalPrice}}">
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                    <div class="form-group">
                                        <h6>
                                            <i class="fa fa-calendar">&nbsp;</i>
                                            Production Date *</h6>
                                        <input type="date" placeholder="Production Date" class="form-control" name="PD" required value="{{$production->productionDate}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <h6>
                                            <i class="fa fa-user">&nbsp;</i>
                                            Consumer's Name</h6>
                                        <input type="text" placeholder="Complete Name" class="form-control" name="CN" value="{{$production->name}}">
                                    </div>
                                </div>
                                <div class="col-md-8 col-sm-6">
                                    <div class="form-group">
                                        <h6>
                                            <i class="fa fa-map-marker">&nbsp;</i>
                                            Consumer's Address</h6>
                                        <input type="text" placeholder="Address" class="form-control" name="CA" value="{{$production->address}}">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <h6>
                                            <i class="fa fa-sticky-note">&nbsp;</i>
                                            Note </h6>
                                        <textarea name="note"  cols="30" rows="5" class="form-control">{{$production->note}}</textarea>
                                    </div>
                                </div>
                           </div>
                           <div class="card-footer bg-transparent">
                                <button type="submit" class="btn btn-rounded mb-3 text-white float-right" style="background-color:#bf3e11"><i class="fa fa-database">&nbsp;</i>Save to Database</button>
                                <a href="{{ url()->previous() }}"><button type="button" class="btn btn-rounded btn-danger mb-3 text-white float-right"><i class="fa fa-chevron-circle-left">&nbsp;</i>Cancel</button></a>    
                            </div> 
                    </div>
                </div>
            </form>    
            </div>
    </div>
</div>
@endsection 
@push('js')
<script src="{{asset('js/select2.min.js')}}"></script>
<script>
    $(document).ready(function(){
    $('#product').select2({
        placeholder : "Select Raw Materials"
    });
    });
</script>
@endpush