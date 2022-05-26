@extends('layouts.backend.admin.app')
@section('title','Forum - ')
@push('css')

@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Forum</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.forum.index')}}">Forum</a></li>
                <li><span>index</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <div class="row">
            <div class="col-lg-3 col-md-8 col-sm-12">
                    <div class="card">
                        <div class="card-body">
                                <h4 class="btn btn-default btn-block"><center><i class="fa fa-users">&nbsp;</i>Adoptors List&nbsp;<span class="badge badge-light" style="color:chocolate">{{$adoptors->count()}}</span></center> </h4>
                        <ul class="list-unstyled">
                            <li>
                                <input type="text" name="searchAdoptor" id="searchAdoptor" placeholder="Search Adoptor Here" class="form-control" style="display:none">
                            </li><br>
                    @foreach ($adoptors as $adoptor)
                        <a href="{{route('admin.userPost',$adoptor->id)}}">
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
                          {{-- {{ $adoptors->links() }} --}}
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-8 col-sm-12 ">
                        <p>
                            <a href="{{route('admin.forum.create')}}" data-toggle="tooltip" title="Compose">
                                <button class="btn btn-success btn-xs">
                                    <i class="fa fa-edit"></i>
                                    
                                </button>
                            </a>
                        <a href="{{route('admin.myPost')}}" data-toggle="tooltip" title="My Posts">
                                <button class="btn btn-success btn-xs">
                                    <i class="fa fa-user"></i>
                                </button>
                            </a>
                    @if ($postPending->count() >= 1)
                        <a href="{{route('admin.pending')}}">
                        <button type="button" class="btn btn-outline-danger float-right">Pending Posts&nbsp;{{$postPending->count()}}</button>
                        </a>
                    @endif
                            
                        @foreach ($forums as $forum)
                        <div class="card ">
                            <div class="card-header">
                                    <img src="{{ asset('storage/adoptors/'.$forum->user->adoptor->image)}}" class="rounded-circle" alt="" style="height:1cm; width:1cm">
                                        <strong>{{$forum->user->adoptor->name}}</strong>
                                    <strong style="color:orangered" class="float-right">{{$forum->created_at->diffForHumans()}}&nbsp;<i class="fa fa-clock-o"></i></strong>
                                @if ($forum->status == 0)
                                <a href=""><span class="badge badge-danger">Need for approval</span></a>
                                @endif
                                </div>
                            
                            <div class="card-body">
                                @if($forum->user_id == Auth::user()->id)
                            <a href="{{route('admin.forum.edit',$forum->id)}}">
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
                                    <a href="{{route('admin.forum.show',$forum->slug)}}"><strong>Read more</strong></a>    
                                                               
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
                                    <a href="{{route('admin.forum.show',$post->slug)}}" style="color:black">
                                        <h5 class="mt-0 mb-1">
                                            &nbsp;{!!substr(strip_tags($post->title), 0, 20)!!}..
                                        </h5>
                                    </a>
                                    {!!substr(strip_tags($post->body), 0, 100)!!} 
                                    </div>
                                </li>
                                <p>
                                Comments(1)<strong class="float-right">{{$forum->created_at->diffForHumans()}}&nbsp;<i class="fa fa-clock-o"></i></strong></p><br>
                            @endforeach
                        </ul>
                    </div>
    </div>
</div>
@endsection 
@push('js')

@endpush