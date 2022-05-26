@extends('layouts.backend.admin.app')
@section('title','Message - ')
@push('css')

@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Message<span class="badge badge-pill badge-primary"></span></h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.message.index')}}">Message</a></li>
                <li><span>Show</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <div class="row justify-content-md-center">
        <!-- seo fact area start -->
        <div class="col-lg-8 col-md-8 col-sm-8">
             <div class="jumbotron">
                 <h1 class="display-6">{{$message->adoptor->name}}</h1>
                 <p class="lead">{{$message->subject}}<span class="badge badge-light float-right">{{date('F d, Y h:sa', strtotime($message->created_at))}}</p>
                 <hr class="my-2">
                 <p>{{$message->message}} </span></p>
                 <form action="{{route('admin.message-reply')}}" method="post">
                    @csrf
                    <p class="lead mt-5">
                        <label>Reply to this message</label>
                        <textarea name="message" id="" cols="30" rows="10" class="form-control" placeholder="Reply message" required></textarea>
                        <div class="text-center">
                            <input type="hidden" name="messageId" value="{{$message->id}}">
                        <button type="submit" class="btn btn-primary mt-2 ">Send</button>
                       </div>
                    </p>
                </form>
             </div>
        </div>
    </div>
</div>
@endsection 
@push('js')

@endpush