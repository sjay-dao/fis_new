@extends('layouts.backend.admin.app')
@section('title','Raw materials - ')
@push('css')

@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Raw Materials<span class="badge badge-pill badge-primary">{{$rawMats->count()}}</span></h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.rawMaterial.index')}}">Raw Material</a></li>
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
                    <a href="{{route('admin.rawMaterial.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-plus-circle">&nbsp;</i>Add Raw Material</a>
                    <a href="{{route('admin.rawMaterial.report')}}" class="btn btn-rounded mb-3 text-white button-default float-right"><i class="fa fa-cogs">&nbsp;</i>Generate Report</a>
                <div class="single-table">
                    <div class="data-tables datatable-dark">
                        <table class="table table-hover progress-table text-center">
                            <thead class="text-uppercase">
                            <tr>
                                    <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                    <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Name</th>
                                    <th scope="col"><i class="fa fa-book color-default">&nbsp;</i>Description</th>
                                    <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($rawMats as $key=>$rawMat)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td><strong>{{$rawMat->name}}</strong></td>
                                        <td><strong>{!!str_limit($rawMat->description,50)!!}</strong></td>
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                                <li class="mr-3" data-toggle="tooltip" title="View Information">
                                                        <a href="{{route('admin.rawMaterial.show',$rawMat->id)}}" class="btn btn-rounded btn-info  btn-xs"><i class="fa fa-eye"></i></a>
                                                </li>
                                                <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                                    <a  href="{{route('admin.rawMaterial.edit',$rawMat->id)}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></a></li>
                                            <li data-toggle="tooltip" title="Delete"><button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$rawMat->id}})"><i class="ti-trash"></i></button></li>
                                            <form id="delete-{{$rawMat->id}}" action="{{route('admin.rawMaterial.destroy',$rawMat->id)}}" method="POST" style="display:none">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                            </ul>
                                        </td>
                             
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
  
