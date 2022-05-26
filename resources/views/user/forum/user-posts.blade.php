@extends('layouts.backend.user.app')
@section('title','Adoptors Post')
@push('css')
<style>
        .centered {
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          background: rgba(64, 64, 64, 0.8);
          padding: 5px;
          text-align: center;
           
        }
        </style>
@endpush
@section('content')
<div class="container">
        @foreach ($adoptor as $adoptor)
        <img src="{{asset('storage/adoptors/background/'.$adoptor->adoptor_image)}}" style="width:100%">
        <div class="centered"><h1 style="color:white">{{$adoptor->adoptor_name}}</h1></div>
        @endforeach
        <div class="row">
                <div class="col-md-4"><br>
                    <button class="btn btn-default btn-block">Top 5 popular Post</button><br>
                    @if ($p_posts->count() <= 0)
                    <div class="alert alert-info"><h6>No post Available</h6></div>
                @endif
                    @foreach ($p_posts as $p_post)
                    <div class="media mb-5">
                         <img class="img-fluid mr-4" src="{{ asset('storage/forum_images/'.$p_post->forum_image)}}" alt="image" style="width:3cm">
                         <div class="media-body">
                         <h4 class="mb-3">{{$p_post->forum_title}}</h4>
                         <a href="{{route('user.forum.show',$p_post->forum_slug)}}"><strong>Read more</strong></a>    
                         </p>
                         </div>
                     </div>
                    @endforeach
                </div>
                <div class="col-md-8"><br>
                    <button class="btn btn-default btn-block">Recently Posted</button><br>
                    @if ($p_posts->count() <= 0)
                        <div class="alert alert-info"><h6>No post Available</h6></div>
                    @endif
                    @foreach ($p_posts as $p_post)
                    <div class="media mb-5">
                         <img class="img-fluid mr-4" src="{{ asset('storage/forum_images/'.$p_post->forum_image)}}" alt="image" style="width:3cm">
                         <div class="media-body">
                         <h4 class="mb-3">{{$p_post->forum_title}}</h4>
                         <a href="{{route('user.forum.show',$p_post->forum_slug)}}"><strong>Read more</strong></a>    
                         </p>
                         </div>
                     </div>
                    @endforeach
                </div>
            </div>
</div>

@endsection  
@push('js')

@endpush