@extends('layouts.backend.admin.app')
@section('title','Adoptors - ')
@push('css')
    
@endpush
@section('area')
<div class="col-sm-6">
    <div class="breadcrumbs-area clearfix">
        <h4 class="page-title pull-left">Adoptors <span class="badge badge-pill badge-primary">{{$adoptors->count()}}</span></h4>
        <ul class="breadcrumbs pull-left">
            <li><a href="{{route('admin.adoptor.index')}}">Adoptor</a></li>
                <li><span>index</span></li>
            </ul>
        </div>
    </div> 
@endsection
@section('content')
<div class="main-content-inner"><br>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
                <a href="{{route('admin.adoptor.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-plus-circle">&nbsp;</i>Add Adoptor</a>
                <a href="{{route('admin.adoptor.report')}}" class="btn btn-rounded mb-3 text-white button-default float-right"><i class="fa fa-print">&nbsp;</i>Generate Report</a>
                <div class="single-table">
                <div class="data-tables datatable-dark">
                    <table class="table table-hover progress-table text-center">
                        <thead class="text-uppercase">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Name</th>
                            <th scope="col"><i class="fa fa-map-marker color-default">&nbsp;</i>Address</th>
                            <th scope="col"><i class="fa fa-globe color-default">&nbsp;</i>Region</th>
                            <th scope="col"><i class="fa fa-balance-scale color-default">&nbsp;</i>scale</th>
                            <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach ($adoptors as $key=>$adoptor)
                            <tr>
                                <td>{{$key+1}}</td>
                                <td>{{$adoptor->name}}</td>
                                <td>{{$adoptor->address}}</td>
                                <td>
                                   {{$adoptor->region->name}}
                                </td>
                                <td>
                                    {{strtoupper($adoptor->scale)}}
                                </td>
                                <td>
                                    <ul class="d-flex justify-content-center">
                                        <li class="mr-3" data-toggle="tooltip" title="View Information">
                                            <a href="{{route('admin.adoptor.show',$adoptor->id)}}" class="btn btn-rounded btn-info  btn-xs"><i class="fa fa-eye"></i></a>
                                        </li>
                                        <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                            <a  href="{{route('admin.adoptor.edit',$adoptor->id)}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></a></li>
                                        <li data-toggle="tooltip" title="Delete"><button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$adoptor->id}})">
                                            <i class="ti-trash"></i></button>
                                        </li>
                                        <form id="delete-{{$adoptor->id}}" action="{{route('admin.adoptor.destroy',$adoptor->id)}}" method="POST" style="display:none">
                                            @csrf
                                            @method('DELETE')
                                        </form>
                                    </ul>
                                </td>
                            </tr>
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


