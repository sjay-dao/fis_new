@extends('layouts.backend.user.app')
@section('title','Edit My Post -')
@push('css')

@endpush
@section('content')<br>
<div class="row">
    <div class="col-2"></div>
  <div class="col-8">
  <form action="{{route('user.forum.update',$forum->id)}}" method="post" enctype="multipart/form-data">
    @csrf()
    @method('PUT')
    <div class="jumbotron">
        <h3 class="display-6">Edit Post</h3>
        <p class="lead">
            <div class="form-group">
                <label>Title</label>
            <input type="text" name="title" class="form-control input-sm" placeholder="Title" aria-label="Username" aria-describedby="basic-addon1" value="{{$forum->title}}" required>
            </div>
            <div class="form-group">
                <label>Question/Message</label>
            <textarea name="question" class="form-control" placeholder="Your Message/Qeustion here" style="height:20ch" required>{{$forum->body}}</textarea>
            </div>
            <div class="form-group">
                <label>Upload your image here</label>
                <input type="file" class="form-control btn btn-info" name="file">
            </div>
          <p class="lead">
            <button type="submit" class="btn btn-success float-right btn-sm">Submit&nbsp;<i class="fa fa-send-o"></i></button>
            <a href="{{ URL::previous() }}"><button class="btn btn-danger btn-sm" type="button">Back</button></a>
        </p>
        </p>
      </div></form>
  </div>
  <div class="col-2"></div>

</div>

@endsection  
@push('js')

@endpush