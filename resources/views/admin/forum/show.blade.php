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
                <li><span>Show</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
<div class="container"><br>
    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-12">
            {{-- <img class="img-fluid mr-4" src="{{ asset('storage/forum_images/'.$forum->image)}}" alt="image" style="width:100%">
             --}}
             <div class="card mb-3">
                    <img src="{{ asset('storage/forum_images/'.$forum->image)}}" alt="image" style="width:100%" class="card-img-top" alt="...">
                    <div class="card-body">
                            <div class="media">
                            <img src="{{asset('storage/adoptors/'.$forum->user->adoptor->image)}}"class="rounded-circle" alt="" style="height:1cm; width:1cm">
                                    <div class="media-body">
                                      <h5 class="mt-0">&nbsp;{{$forum->user->adoptor->name}}a</h5>
                                      <p class="card-text">&nbsp;
                                            <small class="text-muted">
                                                <b style="color:chocolate">
                                                    <i class="fa fa-calendar-o">&nbsp;</i>
                                                    {{date('M-d-Y H:i:A', strtotime($forum->created_at))}}
                                                    <i class="fa fa-clock-o"></i>
                                                </b>
                                                </small></p>
                                    </div>
                                  </div><br>
                    <h5 class="card-title">{{$forum->title}}</h5>
                    <p class="card-text">{{$forum->body}}</p>
                   
                        <form action="{{route('admin.comment.store')}}" method="POST" id="comment">
                            @csrf
                            <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1">
                                            <img src="{{asset('storage/adoptors/'.Auth::user()->adoptor->image)}}"class="rounded-circle" alt="" style="height:1cm; width:1cm">
                                      </span>
                                    </div>
                                <input type="hidden" name="id" value="{{$forum->id}}"> 
                            <input type="text" class="form-control" name="comment" id="comment" placeholder="Leave your Comment here" aria-label="comment" aria-describedby="basic-addon1" required>
                            <button type="submit" class="btn  btn-success  btn-sm" style="display:none" id="submit"><i class="fa fa-paper-plane" >&nbsp;</i> comment</button>
                        </div>
                        </form>
                        @if ($forum->comment->count() >= 1)
                        <h4>Comments({{$forum->comment->count()}})</h4>
                        <ul class="list-group">
                            @foreach ($forum->comment->reverse() as $comment)
                                    <div class="media form-control">
                                        <img src="{{asset('storage/adoptors/'.$comment->user->adoptor->image)}}"class="img-fluid mr-4" alt="" style="height:1.5cm; width:1.5cm">
                                        <div class="media-body">
                                            <h6 class="mb-1">{{$comment->user->adoptor->name}}<span class="badge badge-default badge-pill float-right">
                                                {{$comment->created_at->diffForHumans()}}
                                            <br><br>

                                            @if ($comment->user->id == Auth::user()->id)
                                           
                                            <button type="button" class="btn btn-rounded btn-info  btn-xs" data-toggle="modal" data-target="#edit{{$comment->id}}"><i class="fa fa-edit"></i></button>  
                                            <button type="submit" class="btn btn-rounded btn-danger  btn-xs float-right" onclick="del({{$comment->id}})" data-toggle="tooltip" title="Delete Comment"><i class="ti-trash"></i></button> 
                                            <!-- DELETE POST FUNCTION-->
                                                <form id="delete-{{$comment->id}}" action="{{route('admin.comment.destroy',$comment->id)}}" method="POST" style="display:none">
                                                    @csrf
                                                    @method('DELETE')
                                                </form> 
                                            @endif
                                        </span></h6>
                                            {{$comment->comment}}<br>
                                        </div>
                                    </div>
                                    <!---------MODAL FUNCTION HERE--->
                                    <form action="{{route('admin.comment.update',$comment->id)}}" method="POST"> @csrf @method('PUT')
                                        <div class="modal fade" id="edit{{$comment->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                              <div class="modal-content">
                                                <div class="modal-header">
                                                  <h5 class="modal-title" id="exampleModalLabel">Edit Comment <i class="fa fa-edit"></i></h5>
                                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                  </button>
                                                </div>
                                                <div class="modal-body">

                                                <textarea name="comment"  cols="30" class="form-control">{{$comment->comment}}</textarea>
                                                </div>
                                                <div class="modal-footer">
                                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                  <button type="submit" class="btn btn-primary">Save&nbsp;<i class="fa fa-database"></i></button>
                                                </div>
                                              </div>
                                            </div>
                                        </div>
                                    </form>
                                          <!------------END----------->
                            @endforeach
                        </ul>
                        @else
                        <h4>No Comment yet</h4>
                        @endif

                        
                    </div>
                  </div>
        </div>  
        <div class="col-lg-3 col-md-8 col-sm-12"><br>
            <ul class="list-unstyled">
            <li><h4 class="btn btn-default btn-block"><center>Other Posts<span class="badge badge-light" style="color:chocolate">{{$posts->count()}}</span></center></h4></li><br>
                @foreach ($posts as $post)
                <li class="media">
                        <img src="{{ asset('storage/forum_images/'.$post->image)}}" class="rounded-circle" alt="" style="height:1cm; width:1cm">
                        <div class="media-body">
                        <a href="{{route('admin.forum.show',$post->slug)}}" style="color:black">
                            <h5 class="mt-0 mb-1">
                                &nbsp;{!!substr(strip_tags($post->title), 0, 20)!!}..
                            </h5>
                        </a>
                        {!! substr(strip_tags($post->body), 0, 100)!!} 
                        </div>   
                    </li>
                    <p>
                    Comments({{$post->comment->count()}})<strong class="float-right">{{$post->created_at->diffForHumans()}}&nbsp;<i class="fa fa-clock-o"></i></strong></p><br>
                @endforeach
            </ul>
        </div>
    </diV> 
</div>
@endsection  
@push('js')
<script>
    $('#comment').keyup(function(){
        $('#submit').fadeIn(500);
    });
    $('[data-toggle="tooltip"]').tooltip();

 
    
</script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
       <script>
           $('[data-toggle="tooltip"]').tooltip(); 
            $(document).ready( function () {
                $('.table').DataTable();
            } );
            function del(id){
                const swalWithBootstrapButtons = Swal.mixin({
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false,
                })
                swalWithBootstrapButtons.fire({
                title: 'Are you sure?',
                text: "You want to delete this Region ?",
                type: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel!',
                reverseButtons: true
                }).then((result) => {
                if (result.value) {
                    event.preventDefault();
                    document.getElementById('delete-'+id).submit();
                } else if (
                    // Read more about handling dismissals
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                    'Cancelled',
                    'Your Data is safe :)',
                    'error'
                    )
                }
                })
            }
            </script>
@endpush