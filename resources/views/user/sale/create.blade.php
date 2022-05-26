@extends('layouts.backend.user.app')
@section('title','Sale Create - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
{{-- <script src="https://cloud.tinymce.com/5/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script> --}}
@endpush

@section('content')
<div class="container"><br>
    <div class="page-title-area">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <div class="breadcrumbs-area clearfix">
                        <h4 class="page-title pull-left">{{Auth::user()->adoptor->name}}</h4>
                        <ul class="breadcrumbs pull-left">
                        <li><a href="{{route('user.sale.index')}}">Sale</a></li>
                            <li><span><i class=" fa fa-plus color-default">&nbsp;</i> Create</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
<div class="main-content-inner"><br>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
            </div>
            <div class="card-body form-control">
                <form action="{{route('user.sale.store')}}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Name</label>
                                <select class="form-control" name="production" id="production" required>
                                    <option value="">--Please Select Product--</option>
                                    @foreach ($productions as $production)
                                        @if ($production->rawMaterialUsed->count() <= 0)
                                        <option value="{{$production->id}}" disabled>{{$production->name}} - Please add Raw material used in the production first </option>
                                        @else
                                        <option value="{{$production->id}}">{{$production->name}} - {{$production->dateProduced}} ({{$production->packs}}&nbsp;packs-Available) </option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Packs</label>
                               <input type="number" name="quantity" placeholder="Packs" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <label>Price</label>
                               <input type="number" name="price" placeholder="per packs" class="form-control" required">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Type</label>
                                <select class="form-control" name="type" required id="type">
                                    <option value="Purchase">Purchase</option>
                                    <option value="Donation">Donation</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Clients List</label>
                                <select class="form-control" name="client" required id="client">
                                    <option value="">--Please Select Client--</option>
                                    @foreach ($clients as $client)
                                        <option value="{{$client->id}}">{{$client->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Note</label>
                        <textarea class="form-control" name="description" ></textarea>
                    </div>
                    <div class="card-footer bg-transparent">
                        <button type="submit" class="btn btn-rounded mb-3 text-white float-right" style="background-color:#bf3e11"><i class="fa fa-database">&nbsp;</i>Save to Database</button>
                        <a href="{{ url()->previous() }}"><button type="button" class="btn btn-rounded btn-danger mb-3 text-white float-right"><i class="fa fa-chevron-circle-left">&nbsp;</i>Cancel</button></a>    
                    </div>
                </form>
            </div>
        </div>    
    </div>
</div>
</div>
</div>
       @endsection 
       @push('js')
       <script src="{{asset('js/select2.min.js')}}"></script>
       <script>
           $(document).ready(function(){
            $('#production').select2({
                placeholder : "Select Product from Productions"
            });
            $('#client').select2({
                placeholder : "Please Select Client"
            });
           });
       </script>
       @endpush
  
