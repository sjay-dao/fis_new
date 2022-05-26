@extends('layouts.backend.user.app')
@section('title','Forum - Show')
@push('css')

@endpush
@section('content')
<div class="container"><br>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{route('user.forum.index')}}">Forum</a></li>
        <li class="breadcrumb-item active" aria-current="page"><i class="fa fa-user"></i>&nbsp;My Posts||Total: {{$posts->count()}}</li>
        </ol>
        <a href="{{route('user.forum.index')}}" data-toggle="tooltip" title="back to Forum">
            <button type="button" class="btn btn-rounded btn-info  btn-sm"><i class="fa fa-arrow-left">&nbsp;</i> Back</button>  
        </a>
    </nav>
    <div class="row justify-content-md-center">
        <div class="col-md-8">
            
            @if ($posts->count() <= 0)
                <div class="alert alert-info">
                    <center><h3><i class="fa fa-user">&nbsp;</i>Sorry but you don't have post yet</h3><br>
                    <a href="{{route('user.forum.index')}}" data-toggle="tooltip" title="back to Forum">
                        <button type="button" class="btn btn-rounded btn-info  btn-sm"><i class="fa fa-arrow-left"></i></button>  
                    </a></center>
                </div>
            @endif
        @foreach ($posts as $post)
            <div class="card ">
                <div class="card-header">
                    <img src="{{ asset('storage/adoptors/'.$post->user->adoptor->image)}}" class="rounded-circle" alt="" style="height:1cm; width:1cm">
                        <strong>{{$post->user->adoptor->name}}</strong>
                    <strong style="color:orangered" class="float-right">
                        @if ($post->status == 0)
                        <span class="badge badge-danger">Pending</span>
                        @endif
                        {{$post->created_at->diffForHumans()}}&nbsp;<i class="fa fa-clock-o"></i></strong>
                </div>
                
                <div class="card-body">
                    <button type="submit" class="btn btn-rounded btn-danger  btn-xs float-right" onclick="del({{$post->id}})" data-toggle="tooltip" title="Delete Post"><i class="ti-trash"></i></button> 
                    <!-- DELETE POST FUNCTION-->
                        <form id="delete-{{$post->id}}" action="{{route('user.forum.destroy',$post->id)}}" method="POST" style="display:none">
                            @csrf
                            @method('DELETE')
                        </form> 
                    <!-- end -->
                    <a href="{{route('user.forum.edit',$post->id)}}" data-toggle="tooltip" title="Edit Post" class="float-right">
                        <button type="button" class="btn btn-rounded btn-info  btn-xs"><i class="fa fa-edit"></i></button>  
                    </a>
                    <div class="media mb-5">
                        <img class="img-fluid mr-4" src="{{ asset('storage/forum_images/'.$post->image)}}" alt="image" style="width:3cm">
                        <div class="media-body">
                            <h4 class="mb-3">{{$post->title}}</h4>
                            <p style="border-bottom:2px solid rgba(204, 71, 19, 0.4)">
                                {!!substr(strip_tags($post->body), 0, 100)!!} ... 
                                <a href="{{route('user.forum.show',$post->slug)}}"><strong>Read more</strong></a>                                
                                <br>
                            </p>
                        </div>
                    </div>
                </div>
            </div><br>
        @endforeach
        {{$posts->links()}}
        </div>
    </div>
@endsection  
@push('js')
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