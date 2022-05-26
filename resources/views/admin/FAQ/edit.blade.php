@extends('layouts.backend.admin.app')
@section('title','FAQ Edit - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
<script src="https://cloud.tinymce.com/5/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">FAQ</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.FAQ.index')}}">FAQ</a></li>
                <li><span>Edit</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
    <div class="main-content-inner"><br>
        <div class="row">
            <!-- seo fact area start -->
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card border-success mb-3">
                    <h5 class="card-header bg-transparent border-default"><i class=" fa fa-plus-circle">&nbsp;</i> Edit FAQ</h5><br>
                        <form action="{{route('admin.FAQ.update',$faq->id)}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <h6>Question</h6>
                                <input type="text" name="question" placeholder="Question here" class="form-control" value="{{$faq->question}}">
                            </div>
                            <div class="form-group">
                                <h6>Answer</h6>
                                <textarea class="form-control" style="height:30ch" name="answer" placeholder="Answer Here">{{$faq->answer}}</textarea>
                            </div>
                           
                        <div class="card-footer bg-transparent">
                        <button type="submit" class="btn btn-rounded mb-3 text- white float-right" style="background-color:#bf3e11"><i class="fa fa-database">&nbsp;</i>Save to Database</button>
                        <a href="{{ route('admin.FAQ.index') }}"><button type="button" class="btn btn-rounded btn-danger mb-3 text-white float-right"><i class="fa fa-chevron-circle-left">&nbsp;</i>Cancel</button></a>
                    </div>
                </form>
                </div>
            </div>
            <!-- testimonial area end -->
        </div>
    </div>
        </div>
       @endsection 
       @push('js')
       @endpush
  
