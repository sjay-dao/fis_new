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
                <li><span>index</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <div class="row">
        <!-- seo fact area start -->
        <div class="col-lg-12 col-md-12 col-sm-12">
                <a href="{{route('admin.message.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-plus-circle">&nbsp;</i>Compose</a>
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="sent-message" data-toggle="tab" href="#sent" role="tab" aria-controls="sent" aria-selected="true">Inbox</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="inbox-message" data-toggle="tab" href="#inbox" role="tab" aria-controls="inbox" aria-selected="false">Sent Messages</a>
                    </li>
                  </ul>
                  <div class="tab-content mt-3" id="myTabContent">
                    <div class="tab-pane fade show active" id="sent" role="tabpanel" aria-labelledby="sent-message"><div class="single-table">
                        <div class="data-tables datatable-dark">
                            <table class="table table-hover progress-table text-center">
                                <thead class="text-uppercase">
                                <tr>
                                    <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                    <th scope="col" style="width:20ch"><i class="fa fa-pencil color-default">&nbsp;</i>Adoptor</th>
                                    <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Subject</th>
                                    <th scope="col"><i class="fa fa-calendar color-default">&nbsp;</i>Date</th>
                                    <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach ($messages as $key=>$message)
        
                                    @if ($message->status == '0' )
                                        <tr class="text-nowrap" style="width: 8rem; color:chocolate">
                                    @else
                                        <tr class="text-nowrap" style="width: 8rem">
                                    @endif
                                            <td>{{$key+ 1}}</td>
                                            <td>{{$message->adoptorInbox->name}}</td>
                                            <td>{{$message->subject}}</td>
                                            <td>{{date('F d, Y', strtotime($message->created_at))}}</td>
                                            <td>
                                                <ul class="d-flex justify-content-center">
                                                    <a href="{{route('admin.message.show', $message->id)}}" class="mr-3">
                                                    <button class="btn btn-rounded btn-success  btn-xs"><i class="fa fa-eye"></i></button>
                                                    </a>
                                                </ul>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                    <div class="tab-pane fade" id="inbox" role="tabpanel" aria-labelledby="inbox">
                        <div class="data-tables datatable-dark">
                            <table class="table table-hover progress-table text-center">
                                <thead class="text-uppercase">
                                <tr>
                                    <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                    <th scope="col" style="width:20ch"><i class="fa fa-pencil color-default">&nbsp;</i>Adoptor</th>
                                    <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Subject</th>
                                    <th scope="col"><i class="fa fa-calendar color-default">&nbsp;</i>Date</th>
                                    <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach ($messageSent as $key=>$message)
                                        <tr class="text-nowrap" style="width: 8rem">
                                            <td>{{$key+ 1}}</td>
                                            <td>{{$message->adoptorSent->name}}</td>
                                            <td>{{$message->subject}}</td>
                                            <td>{{date('F d, Y', strtotime($message->created_at))}}</td>
                                            <td>
                                                <ul class="d-flex justify-content-center">
                                                    <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                                    <button data-toggle="modal" data-target="#editMessage-{{$message->id}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></button>
                                                    </li>
                                                    <a data-toggle="modal" data-target="#showMessage-{{$message->id}}">
                                                    <button class="btn btn-success btn-xs btn-rounded"><i class="fa fa-eye"></i></button>
                                                    </a>
                                                    <li data-toggle="tooltip" title="Delete">
                                                        <button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$message->id}})"><i class="ti-trash"></i></button>
                                                    </li>
                                                    <form id="delete-{{$message->id}}" action="{{route('user.message.destroy',$message->id)}}" method="POST" style="display:none">
                                                        @csrf
                                                        @method('DELETE')
                                                    </form>
                                                </ul>
                                            </td>
                                        </tr>
    
                                        <!-------------------------------EDIT message MODAL------------------------------------>
                                        <div class="modal fade" id="editMessage-{{$message->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                <form action="{{route('admin.message.update',$message->id)}}" method="POST">
                                                @csrf
                                                @method('PUT')
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-comment color-default">&nbsp;</i>
                                                            Message
                                                        </h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label>Subject</label>
                                                                    <input type="text" name="subject" placeholder="Subject" class="form-control" value="{{$message->subject}}">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Note</label>
                                                                    <textarea name="message" class="form-control" placeholder="Message" cols="10" rows="5">{{$message->message}}</textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger btn-rounded mb-3  pull-left" data-dismiss="modal"><i class="fa fa-arrow-left">&nbsp;</i>Cancel</button>
                                                            <button type="submit" class="btn btn-rounded mb-3 text-white button-default pull-right" ><i class="fa fa-database">&nbsp;</i>Save</button>
                                                    </div>
                                                </div>
                                                </form>
                                            </div>
                                        </div>

                                        <!-------------------------------Show message MODAL------------------------------------>
                                        <div class="modal fade" id="showMessage-{{$message->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-comment color-default">&nbsp;</i>
                                                            Message
                                                        </h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="jumbotron">
                                                            <h5 class="display-6">to:&nbsp;{{$message->adoptorSent->name}}</h5><br>
                                                            <p class="lead">{{$message->subject}}<span class="badge badge-light float-right">{{date('F d, Y h:sa', strtotime($message->created_at))}}</p>
                                                            <hr class="my-2">
                                                            <p>{{$message->message}} </span></p>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger btn-rounded mb-3  pull-left" data-dismiss="modal"><i class="fa fa-arrow-left">&nbsp;</i>Cancel</button>
                                                            <button type="submit" class="btn btn-rounded mb-3 text-white button-default pull-right" ><i class="fa fa-database">&nbsp;</i>Save</button>
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
</div>
@endsection 
@push('js')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<script>
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