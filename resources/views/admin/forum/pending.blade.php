@extends('layouts.backend.admin.app')
@section('title','History - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Forum<span class="badge badge-pill badge-primary"></span></h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.forum.index')}}">Forum</a></li>
                <li><span>Pending Posts</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="single-table">
                <div class="data-tables datatable-dark">
                    <table class="table table-hover progress-table text-center">
                        <thead class="text-uppercase">
                        <tr>
                            <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                            <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Adopotor</th>
                            <th scope="col"><i class="fa fa-book color-default">&nbsp;</i>Title</th>
                            <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach ($posts as $key=>$post)
                                <tr>
                                    <td>{{$key+1}}</td>
                                    <td>{{$post->user->adoptor->name}}</td>
                                    <td>{{$post->title}}</td>
                                    <td>
                                        <ul class="d-flex justify-content-center">
                                            <a data-toggle="modal" data-target="#showMessage-{{$post->id}}">
                                            <button class="btn btn-success btn-xs btn-rounded"><i class="fa fa-eye"></i></button>
                                            </a>
                                        </ul>
                                    </td>
                                </tr>
                                <!-------Show Pending post modal--------->
                                <div class="modal fade" id="showMessage-{{$post->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                      <div class="modal-content">
                                        <div class="modal-header">
                                          <h5 class="modal-title" id="exampleModalLongTitle">Pending post</h5>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                          </button>
                                        </div>
                                        <div class="modal-body">
                                          <div class="jumbotron">
                                            <h5 class="display-6">From: {{$post->user->adoptor->name}}</h5>
                                              <b class="lead">
                                                  {{$post->title}}
                                              </b>
                                              <hr class="my-2">
                                              <div class="row">
                                                <div class="col-md-8">
                                                  <p>{{$post->body}}</p>
                                                </div>
                                                <div class="col-md-4">
                                                  <img class="img-fluid mr-4" src="{{ asset('storage/forum_images/'.$post->image)}}" alt="image" style="width:100%">
                                                </div>
                                            </div>
                                              
                                          </div>
                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <a href="{{route('admin.approvePost', $post->id)}}">
                                          <button type="button" class="btn btn-info">Approve</button>
                                        </a>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@push('js')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<script>
     $(document).ready( function () {
         $('.table').DataTable();
     } );
 </script>
@endpush
