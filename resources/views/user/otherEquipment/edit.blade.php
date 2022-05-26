@extends('layouts.backend.user.app')
@section('title','Equipment- ')
@push('css')
<script src="https://cloud.tinymce.com/5/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>
@endpush
@section('content')
<div class="container"><br>
    <div class="page-title-area">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <div class="breadcrumbs-area clearfix">
                        <h4 class="page-title pull-left">{{Auth::user()->adoptor->name}}</h4>
                        <ul class="breadcrumbs pull-left">
                        <li><a href="{{route('user.equipment.index')}}">Other Equipment</a></li>
                            <li><span>Update equipment</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <form action="{{route('user.otherEquipment.update', $otherEquipment->id)}}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
        <div class="card">
            <div class="card-header">
                <a href="{{route('user.equipment.index')}}" class="btn btn-rounded mb-3 text-white button-default btn-xs">
                    <i class="fa fa-arrow-circle-left">&nbsp;</i>
                    back
                </a>
            </div>
            <div class="card-body">
                <div class="row justify-content-md-center">
                    <div class="form-group col-md-12 mb-4">
                        <label><i class="fa fa-file-text-o">&nbsp;</i> Name of the equipment</label>
                        <input type="text" class="form-control" name="name" placeholder="Name" value="{{$otherEquipment->name}}">
                    </div>
                    <div class="form-group col-md-3">
                        <label><i class="fa fa-building">&nbsp;</i> Source of funds</label>
                        <input type="text" class="form-control" name="sourceOfFund" placeholder="Source of Fund" value="{{$otherEquipment->sourceOfFunds}}">
                    </div>
                    <div class="form-group col-md-3">
                        <label><i class="fa fa-sort-numeric-asc">&nbsp;</i>Quantity</label>
                        <input type="number" class="form-control" name="quantity" placeholder="Quantity" value="{{$otherEquipment->quantity}}">
                    </div>
                    <div class="form-group col-md-3">
                        <label><i class="fa fa-image">&nbsp;</i>Image</label>
                        <input type="file" class="form-control" name="image">
                    </div>
                    <div class="form-group col-md-3">
                        <label><i class="fa fa-info">&nbsp;</i>status</label>
                       <select class="form-control" name="status">
                        <option value="{{$otherEquipment->status}}">{{$otherEquipment->status}}</option>
                            @if ($otherEquipment->status == 'Not Operational')
                            <option value="Not Operational">Operational</option>
                            @else
                            <option value="Operational">Not Operational</option>
                            @endif
                       </select>
                    </div>
                    <div class="form-group col-md-12">
                        <label><i class="fa fa-file">&nbsp;</i>Description</label>
                        <textarea class="form-control" style="height:50ch" name="description" placeholder="Description Here">{{$otherEquipment->description}}</textarea>
                    </div>

                    <div class="form-group col-md-12">
                        <label><i class="fa fa-file">&nbsp;</i>Problem/note (if applicable)</label>
                        <textarea class="form-control" style="height:50ch" name="note" placeholder="Porblem or Note">{{$otherEquipment->note}}</textarea>
                    </div>
                </div>
              
                    <button type="submit" class="btn btn-rounded mb-3 text-white button-default btn-lg float-right"><i class="fa fa-floppy-o">&nbsp;</i>Save</button>
            
            </div>
        </div>
        </form>





@endsection  
@push('js')

@endpush