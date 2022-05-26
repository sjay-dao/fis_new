@extends('layouts.backend.user.app')
@section('title','Employees - ')
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
                        <li><a href="{{route('user.employee.index')}}">Employees</a></li>
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
                    <a href="{{route('user.employee.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-user-plus">&nbsp;</i>Add Employee</a>
                    @if ($employees->count() >= 1)
                    <a href="{{route('user.employee.report')}}" target="_blank" class="btn btn-rounded mb-3 btn-info" data-toggle="tooltip" title="Generate Report"><i class="fa fa-print"></i></a>
                    @endif
                    <div class="single-table">
                    <div class="data-tables datatable-dark">
                        <table class="table table-hover progress-table text-center">
                            <thead class="text-uppercase">
                            <tr>
                                <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                <th scope="col"><i class="fa fa-image color-default">&nbsp;</i>Image</th>
                                <th scope="col"><i class="fa fa-user color-default">&nbsp;</i>Name</th>
                                <th scope="col"><i class="fa fa-user color-default">&nbsp;</i>Position</th>
                                <th scope="col"><i class="fa fa-phone-square color-default">&nbsp;</i>Contact Number</th>
                                <th scope="col"><i class="fa fa-envelope color-default">&nbsp;</i>Email</th>
                                <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @if ($employees->count() <= 0)
                                    <div class="alert alert-primary">
                                        <h6><i class="fa fa-folder-open">&nbsp;</i>No Employee's Found</h6>
                                    </div>
                                @endif
                                @foreach($employees as $key=>$employee)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td><img src="{{asset('storage/employees/'.$employee->picture)}}" class="img-responsive" style="border-radius: 50%; width:20%; height:30%"></td>
                                        <td><strong class="float-left">{{strtoupper($employee->firstName)}}&nbsp;{{strtoupper($employee->middleName)}}.&nbsp;{{strtoupper($employee->lastName)}}</strong></td>
                                        <td>{{$employee->position}}</td>
                                        <td>{{$employee->contactNo}}</td>
                                        <td>@if($employee->email != '')  {{$employee->email}} @else N/A @endif</td>
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                                <li class="mr-3" data-toggle="modal" title="View Information" data-target="#profile{{$employee->id}}">
                                                    <button class="btn btn-rounded btn-primary  btn-xs"><i class="fa fa-eye"></i></button>
                                                </li>
                                                <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                                <a  href="{{route('user.employee.edit',$employee->id)}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></a>
                                                </li>
                                                <li data-toggle="tooltip" title="Delete">
                                                    <button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$employee->id}})"><i class="ti-trash"></i></button>
                                                </li>
                                                <form id="delete-{{$employee->id}}" action="{{route('user.employee.destroy',$employee->id)}}" method="POST" style="display:none">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                            </ul>
                                        </td>
                                    </div>
                                   <!------ modal here ------>
                                   <div class="modal fade" id="profile{{$employee->id}}" role="dialog">
                                        <div class="modal-dialog">
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <h4 class="modal-title"><i class="fa fa-user">&nbsp;</i>Employee Information</h4>
                                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <center>
                                                    <img src="{{asset('storage/employees/'.$employee->picture)}}" class="img-responsive" style="border-radius: 50%;">
                                                </center>
                                                <div class="well">
                                                    <div class="row">
                                                        <div class="col-md-9">
                                                            <h5>
                                                            <p>
                                                                <i class="fa fa-user"></i>
                                                                Name</p> &nbsp;{{strtoupper($employee->firstName)}}&nbsp;
                                                                {{strtoupper($employee->middleName)}}.&nbsp;
                                                                {{strtoupper($employee->lastName)}}
                                                            </h5>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <h5>
                                                            <p>
                                                                <i class="fa fa-user-plus"></i>
                                                                Age</p>&nbsp;{{$employee->age}}
                                                            </h5><br>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <h5>
                                                            <p>
                                                            <i class="fa fa-envelope"></i>
                                                                Email
                                                            </p>&nbsp;
                                                           @if ($employee->email != '')
                                                           {{$employee->email}}
                                                           @else 
                                                           N/A
                                                           @endif
                                                            </h5>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <h5>
                                                            <p>
                                                            <i class="fa fa-genderless"></i>
                                                                Gender
                                                            </p>&nbsp;
                                                            @if($employee->gender == 0)Female @else Male @endif
                                                            </h5><br>
                                                        </div>
                                                        <div class="col-md-6">
                                                                <h5>
                                                                <p>
                                                                <i class="fa fa-phone-square"></i>
                                                                    Contact No.
                                                                </p>&nbsp;
                                                                {{$employee->contactNo}}
                                                                </h5>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <h5>
                                                                <p>
                                                                <i class="fa fa-font-awesome"></i>
                                                                    Nationality
                                                                </p>&nbsp;
                                                                {{$employee->nationality}}
                                                                </h5>
                                                            </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                              <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                   <!-------END modal ------->
                                @endforeach
                            </tbody>
                        </table>
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
  
