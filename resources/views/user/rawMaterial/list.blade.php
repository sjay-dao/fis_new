@extends('layouts.backend.user.app')
@section('title','Raw materials - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
@endpush

@section('content')
<div class="container"><br>
    <div class="page-title-area">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="breadcrumbs-area clearfix">
                    <h4 class="page-title pull-left">{{Auth::user()->adoptor->name}}</h4>
                    <ul class="breadcrumbs pull-left">
                    <li><a href="{{route('user.rawMaterial.index')}}">Product</a></li>
                        <li><span><i class=" fa fa-info color-default">&nbsp;</i> Information</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="main-content-inner"><br>
        <div class="row">
            <!-- seo fact area start -->
            <div class="col-lg-12 col-md-12 col-sm-12">
                <a href="{{route('user.rawMaterial.index')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-arrow-circle-left">&nbsp;</i>Back</a>
                <button class="btn btn-rounded mb-3 text-white button-default" data-toggle="modal" data-target="#addRawMat"><i class="fa fa-plus-circle">&nbsp;</i>Add</button>
                <div class="single-table">
                    <div class="data-tables datatable-dark">
                        <table class="table table-hover progress-table ">
                            <thead class="text-uppercase">
                            <tr>
                                <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Name</th>
                                <th scope="col"><i class="fa fa-users color-default">&nbsp;</i>Supplier</th>
                                <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach ($listRawmats as $key=>$rawMats)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td>{{$rawMats->name}}</td>
                                        <td>{{$rawMats->supplier->name}}</td>
                                        <td>
                                            <button class="btn btn-rounded button-default btn-xs text-white" data-toggle="modal" data-target="#editRawMat{{$rawMats->id}}"><i class="fa fa-edit"></i> </button>
                                       
                                            <div class="modal fade" id="editRawMat{{$rawMats->id}}" tabindex="-1" role="dialog" aria-labelledby="editRawMat{{$rawMats->id}}" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                  <div class="modal-content">
                                                    <div class="modal-header">
                                                      <h5 class="modal-title" id="editRawMat{{$rawMats->id}}">Edit raw material list</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                      </button>
                                                    </div>
                                                    <form action="{{route('user.rawMaterial.updateRawMat', $rawMats->id)}}" method="post">
                                                        <div class="modal-body">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-control">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label>Raw material</label>
                                                                            <input type="text" class="form-control" placeholder="Name" name="name" value="{{$rawMats->name}}">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label>Supplier</label><br>
                                                                            <select class="form-control" id="supplier" name="supplier">
                                                                                    @foreach ($suppliers as $supplier)
                                                                                        <option 
                                                                                        {{ $rawMats->supplier_id == $supplier->id ? 'selected' : ''}}
                                                                                        value="{{$supplier->id}}">{{$supplier->name}}</option>
                                                                                    @endforeach
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-rounded mb-3 text-white btn-danger" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-rounded mb-3 text-white button-default">Save</button>
                                                        </div>
                                                    </form>
                                                  </div>
                                                </div>
                                              </div>
                                       
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- testimonial area end -->
        </div>
    </div>
    <!-- add raw material list --->

    <div class="modal fade" id="addRawMat" tabindex="-1" role="dialog" aria-labelledby="addRawMat" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="addRawMat">Add raw material list</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="{{route('user.rawMaterial.insert')}}" method="post">
                <div class="modal-body">
                    @csrf
                    <div class="form-control">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Raw material</label>
                                    <input type="text" class="form-control" placeholder="Name" name="name">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Supplier</label><br>
                                    <select class="form-control" id="supplier" name="supplier">
                                            @foreach ($suppliers as $supplier)
                                                <option value="{{$supplier->id}}">{{$supplier->name}}</option>
                                            @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-rounded mb-3 text-white btn-danger" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-rounded mb-3 text-white button-default">Save</button>
                </div>
            </form>
          </div>
        </div>
      </div>

    <!-- end add raw material list -->
       @endsection 
       @push('js')
       <script src="{{asset('js/select2.min.js')}}"></script>
       <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
       <script>
           
            $(document).ready( function () {
                // $('#supplier').select2({});  
                $('.table').DataTable();  } );
            
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
  
