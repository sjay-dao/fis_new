@extends('layouts.backend.admin.app')
@section('title','Adoptors - ')
@push('css')
    
@endpush
@section('area')
<div class="col-sm-6">
    <div class="breadcrumbs-area clearfix">
        <h4 class="page-title pull-left">Adoptors <span class="badge badge-pill badge-primary"></span></h4>
        <ul class="breadcrumbs pull-left">
            <li><a href="{{route('admin.adoptor.index')}}">Adoptor</a></li>
                <li><span>Contact Person</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <div class="row">
        <!-- seo fact area start -->
        <div class="col-lg-12 col-md-12 col-sm-12">
                <a href="{{route('admin.adoptor-contact-report')}}" target="_blank" class="btn btn-rounded mb-3 text-white button-default float-right"><i class="fa fa-print">&nbsp;</i>Generate Report</a>
                <div class="single-table">
                <div class="data-tables datatable-dark">
                    <table class="table table-hover progress-table text-center">
                        <thead class="text-uppercase">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col"><i class="fa fa-users color-default">&nbsp;</i>Adoptor Name</th>
                            <th scope="col"><i class="fa fa-users color-default">&nbsp;</i>Contact Person</th>
                            <th scope="col"><i class="fa fa-envelope color-default">&nbsp;</i>Emails</th>
                            <th scope="col"><i class="fa fa-map-marker color-default">&nbsp;</i>Address</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $key=>$user)
                            <tr>
                                <td>{{$key+1}}</td>
                                <td>{{$user->adoptor->name}}</td>
                                <td>{{$user->name}}</td>
                                <td><b>{{$user->email}} and {{$user->adoptor->email}}</b></td>
                                <td>{{$user->adoptor->address}}</td>
                               
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


