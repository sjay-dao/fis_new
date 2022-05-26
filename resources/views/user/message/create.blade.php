@extends('layouts.backend.user.app')
@section('title','Rejects - ')
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
                    <li><a href="{{route('user.message.index')}}">Message</a></li>
                        <li><span><i class=" fa fa-ban color-default">&nbsp;</i> Compose</span></li>
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
                        <form action="{{route('user.message.store')}}" method="POST">
                            @csrf
                            <div class="card">
                                <div class="card-header">
                                    <h2>Compose a message to FNRI</h2>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>Send to : </label>
                                        <select name="adoptorId" id="adoptor" class="form-control" required>
                                            @foreach ($adoptors as $adoptor)
                                                <option value="{{$adoptor->id}}">{{$adoptor->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <input type="text" class="form-control" name="subject" placeholder="Subject">
                                    </div>
                                    <div class="form-group">
                                        <label>Message</label>
                                        <textarea name="message" id="" cols="82" rows="10" placeholder="Message" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <a href="{{route('user.message.index')}}" class="btn btn-rounded mb-3 text-white button-default">
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
<script src="{{asset('js/select2.min.js')}}"></script>
<script>
           $(document).ready(function(){
               $('#adoptor').select2({
               });
            });
</script>
@endpush