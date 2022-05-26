@extends('layouts.backend.admin.app')
@section('title','Region - ')
@push('css')

@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Regions<span class="badge badge-pill badge-primary">{{$regions->count()}}</span></h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.region.index')}}">Region</a></li>
                <li><span>index</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
    <div class="main-content-inner"><br>
        <div class="row">
            <!-- seo fact area start -->
            <div class="col-lg-8 col-md-8 col-sm-12">
                <div class="single-table ">
                    <div class="data-tables datatable-dark">
                        <table class="table table-hover progress-table text-center">
                            <thead class="text-uppercase">
                            <tr>
                                <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Name</th>
                                <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($regions as $key=>$region)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td><strong>{{$region->name}}</strong></td>
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                                <li data-toggle="tooltip" title="Update information" class="mr-3"><button type="submit" class="btn btn-rounded btn-warning  btn-xs" data-toggle="modal" data-target="#region-{{$region->id}}"><i class="fa fa-edit"></i></button></li>
                                            <li data-toggle="tooltip" title="Delete"><button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="deleteRegion({{$region->id}})"><i class="ti-trash"></i></button></li>
                                            <form id="delete-region-{{$region->id}}" action="{{route('admin.region.destroy',$region->id)}}" method="POST" style="display:none">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                            </ul>
                                        </td>
                                    </tr>
                                </div>
                                <div class="modal fade" id="region-{{$region->id}}">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title card-title text-primary">Update Region</h5>
                                                        <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                                                    </div>
                                                <form action="{{route('admin.region.update',$region->id)}}" method="POST">
                                                    @csrf
                                                    @method('PUT')
                                                    <div class="modal-body">
                                                        <h6>Region Name</h6><br>
                                                        <input type="text" name="name" class="form-control" placeholder="Region Name" value="{{$region->name}}">
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                                    </div>
                                                </form>
                                                </div>
                                            </div>
                                        </div>
                                    
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
                <div class="card border-success mb-3 form-control">
                    <div class="card-header bg-transparent border-primary">
                            <h5 class="card-title text-primary"><i class="fa fa-plus-circle">&nbsp;</i>Add Region</h5>
                    </div>
                    <form action="{{route('admin.region.store')}}" method="POST">
                        <div class="card-body text-success">
                            @csrf
                            <div class="form-group">
                                <label class="card-title">Region</label>
                                <input type="text" name="name" placeholder="Type Region Here" class="form-control"> 
                            </div>
                        </div>
                        <div class="card-footer bg-transparent border-primary">
                            <button type="submit" class="btn btn-rounded btn-primary mb-3 float-right"><i class="fa fa-database">&nbsp;</i>Save to database</button>
                        </div>
                    </form>
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
            function deleteRegion(id){
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
                    document.getElementById('delete-region-'+id).submit();
                    
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
  
