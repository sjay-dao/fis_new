@extends('layouts.backend.user.app')
@section('title','Message - ')
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
                    <li><a href="{{route('user.message.index')}}">Message</a></li>
                        <li><span><i class=" fa fa-ban color-default">&nbsp;</i> index</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="main-content-inner"><br>
        <div class="row justify-content-md-center">
            <!-- seo fact area start -->
            <div class="col-lg-8 col-md-8 col-sm-8">
                 <div class="jumbotron">
                     <h1 class="display-6">{{$message->adoptor->name}}</h1>
                     <p class="lead">{{$message->subject}}<span class="badge badge-light float-right">{{date('F d, Y h:sa', strtotime($message->created_at))}}</p>
                     <hr class="my-2">
                     <p>{{$message->message}} </span></p>
                     <form action="{{route('user.message-reply')}}" method="post">
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
</div>
@endsection('content')