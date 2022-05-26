@extends('layouts.backend.admin.app')
@section('title','Equipment - ')
@push('css')

@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Equipment<span class="badge badge-pill badge-primary">{{$equipments->count()}}</span></h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.equipment.index')}}">Equipment</a></li>
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
                    <a href="{{route('admin.equipment.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-plus-circle">&nbsp;</i>Add Equipment</a>
                    <a href="{{route('admin.equipment.report')}}" class="btn btn-rounded mb-3 text-white button-default float-right"><i class="fa fa-print">&nbsp;</i>Generate Report</a>
                    <div class="single-table">
                    <div class="data-tables datatable-dark">
                        <table class="table table-hover progress-table text-center">
                            <thead class="text-uppercase">
                            <tr>
                                <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Name</th>
                                <th scope="col"><i class="fa fa-book color-default">&nbsp;</i>Description</th>
                                <th scope="col"><i class="fa fa-image color-default">&nbsp;</i>Image</th>
                                <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($equipments as $key=>$equipment)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td><strong>{{$equipment->name}}</strong></td>
                                        <td><strong>{!!substr(strip_tags($equipment->description), 0, 15)!!}</strong></td>
                                    <td><img height="30px" src="{{ asset('storage/equipment/'.$equipment->image)}}" width="70"></td>
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                                <li class="mr-3" data-toggle="tooltip" title="View information">
                                                        <a href="{{route('admin.equipment.show',$equipment->id)}}" class="btn btn-rounded btn-info  btn-xs"><i class="fa fa-eye"></i></a>
                                                </li>
                                                <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                                    <a  href="{{route('admin.equipment.edit',$equipment->id)}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></a></li>
                                            <li data-toggle="tooltip" title="Delete"><button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$equipment->id}})"><i class="ti-trash"></i></button></li>
                                            <form id="delete-{{$equipment->id}}" action="{{route('admin.equipment.destroy',$equipment->id)}}" method="POST" style="display:none">
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
  
