@extends('layouts.backend.user.app')
@section('title','Rejects - ')
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
                    <li><a href="{{route('user.productSample.index')}}">Product Sample</a></li>
                        <li><span><i class=" fa fa-ban color-default">&nbsp;</i> Create</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="main-content-inner"><br>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="row justify-content-md-center">
                    <div class="col-md-6">  
                        <form action="{{route('user.productSample.store')}}" method="POST">
                            @csrf
                            <div class="card">
                                <div class="card-header">
                                    <h2>Add Product Sample</h2>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <select class="form-control" name="production" id="production" required>
                                                <option value="">--Please Select Product--</option>
                                            @foreach ($productions as $production)
                                                @if ($production->rawMaterialUsed->count() <= 0)
                                                <option value="{{$production->id}}" disabled>{{$production->name}} -- Please add Raw material used in the production first </option>
                                                @else
                                                <option value="{{$production->id}}">{{$production->name}} -- {{$production->dateProduced}} ({{$production->packs}}&nbsp;packs-Available) </option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Packs</label>
                                        <input type="number" class="form-control" placeholder="Packs" name="packs" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Note (Optional)</label>
                                        <textarea class="form-control" name="note" placeholder="Note" cols="10" rows="5"></textarea>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <a href="{{route('user.productSample.index')}}" class="btn btn-rounded mb-3 text-white button-default">
                                        <i class="fa fa-arrow-left">&nbsp;</i>
                                        Back
                                    </a>
                                    <button class="btn btn-rounded btn-success pull-right mb-3 text-white" type="submit">
                                        <i class="fa fa-send"></i>
                                        Submit
                                    </button>
                                </div>
                            </div>
                        </form>                          
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection 
@push('js')

@endpush