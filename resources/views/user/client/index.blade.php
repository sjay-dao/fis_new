@extends('layouts.backend.user.app')
@section('title','Clients - ')
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
                        <li><a href="{{route('user.client.index')}}">Client</a></li>
                            <li><span><i class=" fa fa-users color-default">&nbsp;</i>Index</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    <div class="main-content-inner"><br>
        <div class="row">
            <!-- seo fact area start -->
            <div class="col-lg-12 col-md-12 col-sm-12">
                    <button class="btn btn-rounded mb-3 text-white button-default" data-toggle="modal" data-target="#addClient"><i class="fa fa-user-plus">&nbsp;</i>Add Client</button>
                    {{-- @if ($clients->count() >= 1)
                    <a href="{{route('user.client.report')}}" target="_blank" class="btn btn-rounded mb-3 btn-info" data-toggle="tooltip" title="Generate Report"><i class="fa fa-print"></i></a>
                    @endif --}}
                    <div class="single-table">
                    <div class="data-tables datatable-dark">
                        <table class="table table-hover progress-table text-center">
                            <thead class="text-uppercase">
                            <tr>
                                <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                <th scope="col"><i class="fa fa-user color-default">&nbsp;</i>Name</th>
                                <th scope="col"><i class="fa fa-map-marker color-default">&nbsp;</i>Address</th>
                                <th scope="col"><i class="fa fa-phone-square color-default">&nbsp;</i>Contact Number</th>
                                <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @if ($clients->count() <= 0)
                                    <div class="alert alert-primary">
                                        <h6><i class="fa fa-folder-open">&nbsp;</i>No Client's Found</h6>
                                    </div>
                                @endif
                                @foreach($clients as $key=>$client)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td><strong class="float-left">{{strtoupper($client->name)}}</strong></td>
                                        <td>{{$client->address}}</td>
                                        <td>{{$client->contactNumber}}</td>
                                       
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                                <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                                <button data-toggle="modal" data-target="#client{{$client->id}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></button>
                                                </li>
                                                <li data-toggle="tooltip" title="Delete">
                                                    <button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$client->id}})"><i class="ti-trash"></i></button>
                                                </li>
                                                <form id="delete-{{$client->id}}" action="{{route('user.client.destroy',$client->id)}}" method="POST" style="display:none">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                            </ul>
                                        </td>
                                    </tr>
                                  <!----- update client modal------>
                                <div class="modal fade" id="client{{$client->id}}" role="dialog">
                                        <form action="{{route('user.client.update',$client->id)}}" method="post">
                                            @csrf
                                            @method('PUT')
                                            <div class="modal-dialog">
                                              <div class="modal-content">
                                                <div class="modal-header">
                                                  <h4 class="modal-title"><i class="fa fa-refresh">&nbsp;</i>Update Client</h4>
                                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-control">
                                                        <div class="form-group">
                                                            <label><i class="fa fa-user">&nbsp;</i>Full name*</label>
                                                            <input type="text" name="name" class="form-control" placeholder="Client Name" value="{{$client->name}}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label><i class="fa fa-phone">&nbsp;</i>Contact Number</label>
                                                            <input type="text" name="contactNo" class="form-control" placeholder="09XXXXXXXXX" value="{{$client->contactNumber}}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label><i class="fa fa-map-marker">&nbsp;</i>Address</label>
                                                            <input type="text" name="address" class="form-control" placeholder="Full address" value="{{$client->address}}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="model-footer">
                                                    <center>
                                                        <button class="btn btn-rounded btn-danger" type="button" data-dismiss="modal">Cancel</button>
                                                        <button class="btn btn-rounded btn-success" type="submit">Submit</button>
                                                    </center><br>
                                                </div>
                                            
                                              </div>
                                            </div>
                                        </form>
                                    </div>
                                  <!-----end update client modal ---->
                                @endforeach
                            </tbody>
                        </table>
                        <!--------------modal add client---------->
                        <div class="modal fade" id="addClient" role="dialog">
                            <form action="{{route('user.client.store')}}" method="post">
                                @csrf
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <h4 class="modal-title"><i class="fa fa-user-plus">&nbsp;</i>Add Client</h4>
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-control">
                                            <div class="form-group">
                                                <label><i class="fa fa-user">&nbsp;</i>Full name*</label>
                                                <input type="text" name="name" class="form-control" placeholder="Client Name">
                                            </div>
                                            <div class="form-group">
                                                <label><i class="fa fa-phone">&nbsp;</i>Contact Number</label>
                                                <input type="text" name="contactNo" class="form-control" placeholder="09XXXXXXXXX">
                                            </div>
                                            <div class="form-group">
                                                <label><i class="fa fa-map-marker">&nbsp;</i>Address</label>
                                                <input type="text" name="address" class="form-control" placeholder="Full address">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="model-footer">
                                        <center>
                                            <button class="btn btn-rounded btn-danger" type="button" data-dismiss="modal">Cancel</button>
                                            <button class="btn btn-rounded btn-success" type="submit">Submit</button>
                                        </center><br>
                                    </div>
                                
                                  </div>
                                </div>
                            </form>
                        </div>
                        <!--------end modal add client------->
                    </div>
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
            $('[data-toggle="tooltip"]').tooltip();
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
  
