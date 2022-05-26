@extends('layouts.backend.user.app')
@section('title','Forum - ')
@push('css')

@endpush
@section('content')
<div class="container"><br>
    <div class="row">
        {{-- <div class="col-lg-3 col-md-8 col-sm-12">
            <div class="card">
                <div class="card-body">
                        <h4 class="btn btn-default btn-block"><center><i class="fa fa-users">&nbsp;</i>Adoptors List&nbsp;<span class="badge badge-light" style="color:chocolate">{{$adoptors->count()}}</span></center> </h4>
                <ul class="list-unstyled">
                    <li>
                        <input type="text" name="searchAdoptor" id="searchAdoptor" placeholder="Search Adoptor Here" class="form-control" style="display:none">
                    </li><br>
            @foreach ($adoptors as $adoptor)
                <a href="{{route('user.userPost',$adoptor->id)}}">
            <li class="media">
            <img src="{{ asset('storage/adoptors/'.$adoptor->image)}}" class="mr-3" style="width:2cm; ">
                <div class="media-body">
                  <h6 class="mt-0 mb-1">{{$adoptor->name}}</h6>
                  {!!substr(strip_tags($adoptor->about), 0, 100)!!}
                </div>
              </li>
            </a>
            @endforeach
                  </ul>
                  {{-- {{ $adoptors->links() }} 
                </div>
            </div>
        </div> --}}
        <div class="col-lg-8 col-md-10 col-sm-12 ">
            <p>
                <a href="{{route('user.forum.create')}}" data-toggle="tooltip" title="Compose">
                    <button class="btn btn-success btn-xs">
                        <i class="fa fa-edit"></i>
                        
                    </button>
                </a>
            <a href="{{route('user.myPost')}}" data-toggle="tooltip" title="My Posts">
                
                    <button class="btn btn-success btn-xs">
                        <i class="fa fa-user"></i>
                       
                    </button>
                </a>
                @if ($pendingPosts >= 1)
                <a href="{{route('user.myPost')}}">
                    <button type="button" class=" btn-xs btn-rounded btn btn-danger">
                        Pending Post <span class="badge badge-light">{{$pendingPosts}}</span>
                      </button>
                </a>
                @endif
                {{-- <button class="btn btn-success btn-xs" id="posts"><i class="fa fa-comment">&nbsp;</i>Search Post</button>
                <button class="btn btn-success btn-xs" id="adoptors"><i class="fa fa-users">&nbsp;</i>Search Adoptor Post</button> --}}
            </p>
{{--             
            <label>Search &nbsp; <i class="fa fa-search"></i> </label>
            <input type="text" name="search" class="form-control input-sm" placeholder="Search Here" id="search"> --}}
            @foreach ($forums as $forum)
            <div class="card ">
                <div class="card-header">
                        <img src="{{ asset('storage/adoptors/'.$forum->user->adoptor->image)}}" class="rounded-circle" alt="" style="height:1cm; width:1cm">
                            <strong>{{$forum->user->adoptor->name}}</strong>
                        <strong style="color:orangered" class="float-right">{{$forum->created_at->diffForHumans()}}&nbsp;<i class="fa fa-clock-o"></i></strong>
                    
                </div>
                
                <div class="card-body">
                    @if($forum->user_id == Auth::user()->id)
                <a href="{{route('user.forum.edit',$forum->id)}}">
                        <span class="badge badge-light float-right" style="color:deepskyblue">
                            <i class="fa fa-edit">&nbsp;</i>Edit
                        </span>
                    </a>
                    @endif
                    <div class="media mb-5">
                        <img class="img-fluid mr-4" src="{{ asset('storage/forum_images/'.$forum->image)}}" alt="image" style="width:3cm">
                        <div class="media-body">
                        <h4 class="mb-3">{{$forum->title}}</h4>
                        <p style="border-bottom:2px solid rgba(204, 71, 19, 0.4)">{!!substr(strip_tags($forum->body), 0, 100)!!} ... 
                        <a href="{{route('user.forum.show',$forum->slug)}}"><strong>Read more</strong></a>    
                                                   
                        <br>
                    {{-- @foreach ($forum->comment as $comment)
                        {{$comment->comment}}
                    @endforeach --}}
                        </p>
                        
                        </div>
                        
                    </div>
                   
                </div>
            </div><br>
            @endforeach
        </div>
        <div class="col-lg-3 col-md-8 col-sm-12"><br>
            <ul class="list-unstyled">
            <li><h4 class="btn btn-default btn-block"><center>My Recent Post<span class="badge badge-light" style="color:chocolate">{{$posts->count()}}</span></center></h4></li><br>
                <input type="text" name="search" class="form-control input-sm" placeholder="Search Here" id="searchPost" style="display:none"><br>
                @foreach ($posts as $post)
                <li class="media">
                        <img src="{{ asset('storage/forum_images/'.$post->image)}}" class="rounded-circle" alt="" style="height:1cm; width:1cm">
                        <div class="media-body">
                        <a href="{{route('user.forum.show',$post->slug)}}" style="color:black">
                            <h5 class="mt-0 mb-1">
                                &nbsp;{!!substr(strip_tags($post->title), 0, 20)!!}..
                            </h5>
                        </a>
                        {!!substr(strip_tags($post->body), 0, 100)!!} 
                        </div>
                    </li>
                    <p>
                    <strong class="float-right">{{$forum->created_at->diffForHumans()}}&nbsp;<i class="fa fa-clock-o"></i></strong></p><br>
                @endforeach
            </ul>
        </div>
    </div>
</div>
@endsection  
@push('js')
<script>
     $('[data-toggle="tooltip"]').tooltip();

$("#adoptors").on('click', function(){
  $("#searchAdoptor").slideToggle(200);
});
$("#posts").on('click', function(){
  $("#searchPost").slideToggle(200);
});
</script>
@endpush