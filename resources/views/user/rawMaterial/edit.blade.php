@extends('layouts.backend.user.app')
@section('title','Raw Material Create - ')
@push('css')
{{-- <script src="https://cloud.tinymce.com/5/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script> --}}
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Raw Materials</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('user.rawMaterial.index')}}">Raw Material</a></li>
                <li><span>Update</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
<div class="container"><br>
    <div class="col-sm-6">
            <div class="breadcrumbs-area clearfix">
                <h4 class="page-title pull-left"><i class="fa fa-edit"></i>Update Raw Material</h4>
                <ul class="breadcrumbs pull-left">
                    <li><a href="{{route('user.rawMaterial.index')}}">RawMaterial</a></li>
                    <li><span>index</span></li>
                </ul>
            </div>
        </div>
        <form action="{{route('user.rawMaterial.update',$rawMat->id)}}" method="POST">    
        <div class="row justify-content-md-center">    
        <div class="col-md-10">
            <div class="card text-center">
                <div class="card-header">
                <h3><i class="fa fa-industry">&nbsp;</i>Update  Raw Material</h3>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Please full-up all the required(*) information</h5><br>
                        @csrf
                        @method('PUT')
                        <div class="row justify-content-md-center">
                            <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <h6 class="float-left"><i class="fa fa-industry">&nbsp;</i>Name (*)</h6>
                                                <select class="form-control" id="name" name="name">
                                                    @foreach ($rawMatsList as $rawMats)
                                                        <option 
                                                        {{ $rawMat->name == $rawMats->id ? 'selected' : ''}}
                                                        value="{{$rawMats->id}}">{{$rawMats->name}}</option>
                                                    @endforeach
                                                  </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h6 class="float-left"><i class="fa fa-industry">&nbsp;</i>Extension (*)</h6>
                                                <input type="text" name="extension" placeholder="example(kg,cm,liter)" class="form-control" value="{{$rawMat->extension}}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <h6 class="float-left"><i class="fa fa-list-ol">&nbsp;</i>Quantity (*)</h6>
                                                <input type="number" name="quantity" placeholder="Quantity" class="form-control" value="{{$rawMat->quantity}}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <h6 class="float-left"><i class="fa fa-calendar">&nbsp;</i>Expiration Date (*)</h6>
                                                <input type="date" name="expirationDate" class="form-control" value="{{$rawMat->expirationDate}}">
                                            </div>
                                        </div>
                                    </div>
                                <div class="form-group">
                                    <h6 class="float-left"><i class="fa fa-info">&nbsp;</i>Note/Description</h6>
                                    <textarea class="form-control" style="height:20ch" name="description" placeholder="Description Here">{{$rawMat->note}}</textarea>
                                </div>
                            </div>
                        </div>
                    <div class="card-footer bg-transparent">
                    <button type="submit" class="btn btn-rounded mb-3 text-white float-right" style="background-color:#bf3e11"><i class="fa fa-database">&nbsp;</i>Save to Database</button>
                    <a href="{{ url()->previous() }}"><button type="button" class="btn btn-rounded btn-danger mb-3 text-white float-right"><i class="fa fa-chevron-circle-left">&nbsp;</i>Cancel</button></a>    
                </div>
                </div>
            </div>
        </div>
    </div>
</form>
</div>
@endsection 
@push('js')
@endpush
  
