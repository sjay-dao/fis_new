@extends('layouts.backend.user.app')
@section('title','Message - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
@endpush

@section('content')
<div class="container"><br>
    <div class="main-content-inner"><br>
        <div class="row justify-content-md-center">
            <div class="col-md-6">  
                <form action="{{route('admin.message.store')}}" method="POST">
                    @csrf
                    <div class="card">
                        <div class="card-header">
                            <h2>Compose a message</h2>
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
                                <textarea name="message" id="" cols="82" rows="10" placeholder="Message"></textarea>
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="{{route('admin.message.index')}}" class="btn btn-rounded mb-3 text-white button-default">
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
@endsection()
@push('js')
<script src="{{asset('js/select2.min.js')}}"></script>
<script>
           $(document).ready(function(){
               $('#adoptor').select2({
               });
            });
</script>
@endpush