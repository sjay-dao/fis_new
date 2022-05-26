@extends('layouts.backend.admin.app')
@section('title','Inquiries - ')
@push('css')

@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Inquiries<span class="badge badge-pill badge-primary">{{$inquiries->count()}}</span></h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.inquiry.index')}}">inquiry</a></li>
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
            <div class="single-table">
                <div class="data-tables datatable-dark">
                    <table class="table table-hover progress-table text-center">
                        <thead class="text-uppercase">
                        <tr>
                            <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                            <th scope="col"><i class="fa fa-book color-default">&nbsp;</i>Subject</th>
                            <th scope="col"><i class="fa fa-users color-default">&nbsp;</i>Name</th>
                            <th scope="col"><i class="fa fa-envelope color-default">&nbsp;</i>email</th>
                            <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                        </tr>
                        </thead>
                        <tbody>
                          @foreach($inquiries as $key=>$item)
                              <tr>
                                  <td>{{$key+1}}</td>
                                  <td>{{$item->subject}}</td>
                                  <td>{{$item->name}}</td>
                                  <td>{{$item->email}}</td>
                                  <td>
                                    <ul class="d-flex justify-content-center">
                                        <li class="mr-3" data-toggle="tooltip" title="View Information">
                                            <button class="btn btn-rounded btn-info  btn-xs " data-toggle="modal" data-target="#exampleModal{{$item->id}}"><i class="fa fa-eye"></i></button>
                                        </li>
                                        <li data-toggle="tooltip" title="Delete"><button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$item->id}})"><i class="ti-trash"></i></button></li>
                                        <form id="delete-{{$item->id}}" action="{{route('admin.inquiry.destroy',$item->id)}}" method="POST" style="display:none">
                                            @csrf
                                            @method('DELETE')
                                        </form>
                                    </ul>
                                  </td>
                              </tr>
                              <div class="modal fade" id="exampleModal{{$item->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                      <div class="modal-content">
                                        <div class="modal-header">
                                          <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-paper-plane color-default">&nbsp;</i>Inquiry Content</h5>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                          </button>
                                        </div>
                                        <div class="modal-body">
                                            <h5><i class="fa fa-book color-default">&nbsp;</i>{{$item->subject}}</h5>
                                            <p><i class="fa fa-user color-default">&nbsp;</i>{{$item->name}}<br><strong><i class="fa fa-google-plus color-default">&nbsp;</i>{{$item->email}}</strong><b class="float-right"><i class="fa fa-clock-o color-default">&nbsp;</i>{{$item->created_at->diffForHumans()}}</b></p>
                                            <div class="form-control">
                                                <i class="fa fa-envelope fa-2x">&nbsp;</i><br>&nbsp;&nbsp;&nbsp;{!!$item->message!!}
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
        <!-- testimonial area end -->
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


