@extends('layouts.backend.admin.app')
@section('title','Forum - ')
@push('css')
<link rel="stylesheet" href="{{asset('admin/assets/css/iziModal.min.css')}}">
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Forum</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.forum.index')}}">Forum</a></li>
                <li><span>Edit</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')<br>
<div class="row">
    <div class="col-2"></div>
  <div class="col-8">
  <form action="{{route('admin.forum.update',$forum->id)}}" method="post" enctype="multipart/form-data">
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