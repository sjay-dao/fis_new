@extends('layouts.backend.user.app')
@section('title','Production - ')
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
                        <li><a href="{{route('user.production.index')}}">Production</a></li>
                        <li><span>Index</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<div class="main-content-inner"><br>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <form action="{{route('user.production.search')}}" method="post" class="row">
                    @csrf
                <div class="col-md-3">
                    <a href="{{route('user.production.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-plus-circle">&nbsp;</i>Add</a>
                    <a href="{{route('user.production.report')}}" target="_blank" class="btn btn-rounded mb-3 btn-info" data-toggle="tooltip" title="" data-original-title="Generate Report"><i class="fa fa-print"></i></a>
                </div>
                <div class="col-md-3">
                    <input type="date" name="dateFrom" class="form-control" placeholder="search date From" required>
                </div>
                <div class="col-md-1">
                    To
                </div>
                <div class="col-md-3">
                    <input type="date" name="dateTo" class="form-control" placeholder="search date To"  required>
                </div>
                <div class="col-md-2">
                    <button class="btn btn-success"><i class="fa fa-search">&nbsp;</i>Search</button>
                </div>
            </form>
            <div class="single-table">
                <div class="data-tables datatable-dark">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                <th scope="col"><i class="fa fa-product-hunt color-default">&nbsp;</i>Product Name</th>
                                <th scope="col"><i class="fa fa-list color-default">&nbsp;</i>Packs</th>
                                <th scope="col"><i class="fa fa-calendar color-default">&nbsp;</i>Production Date</th>
                                <th scope="col"><i class="fa fa-industry color-default">&nbsp;</i>Raw Materials</th>
                                <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(isset($productionSearch))
                            <div class="alert alert-primary float-right" role="alert">
                                <h5>Total Productions: {{$productionSearch->count()}}</h5>
                            </div>
                            @foreach ($productionSearch as $key=>$production)
                            
                            @if($production->packs == 0)
                                <tr style="background-color:papayawhip; color:silver">
                            @else 
                                <tr>
                            @endif
                                <td>{{$key+1}}</td>
                                <td>{{$production->name}}</td>
                                <td>{{$production->packs}}</td>
                                <td>{{date('F d, Y', strtotime($production->dateProduced))}}</td>
                                <td>
                                @if ($production->RawMaterialUsed->count() <= 0)
                                <span class="badge badge-danger">Please Select Raw Material/s used</span>
                                @else
                                <center><span class="badge badge-primary">{{$production->RawMaterialUsed->count()}}</span></center>
                                @endif
                                </td>
                                <td>
                                    <ul class="d-flex justify-content-center">
                                        <li class="mr-3" data-toggle="tooltip" title="View Information">
                                        <a href="{{route('user.production.show',$production->id)}}" class="btn btn-rounded btn-primary  btn-xs"><i class="fa fa-eye"></i></a>
                                        </li>
                                        <li class="mr-3" data-toggle="modal" data-target="#EditProouction-{{$production->id}}" >
                                            <button class="btn btn-rounded btn-warning  btn-xs" data-toggle="tooltip" title="Update Information"><i class="fa fa-edit"></i></button>
                                        </li>
                                        @if($production->packs == 0)
                                        <li data-toggle="tooltip" title="Delete">
                                            <button type="button" class="btn btn-rounded btn-danger  btn-xs" disabled><i class="ti-trash"></i></button>
                                        </li>
                                        @else 
                                        <li data-toggle="tooltip" title="Delete">
                                            <button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$production->id}})"><i class="ti-trash"></i></button>
                                        </li>
                                        <form id="delete-{{$production->id}}" action="{{route('user.production.destroy',$production->id)}}" method="POST" style="display:none">
                                            @csrf
                                            @method('DELETE')
                                        </form>
                                        @endif
                                    </ul>
                                </td>
                                </tr>

                                <div class="modal fade" id="EditProouction-{{$production->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Production Update</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="{{route('user.production.update',$production->id)}}" method="POST">
                                    @csrf
                                    @method('PUT')
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Product Name</label>
                                                <select class="form-control" name="product" id="product">
                                                    <option value=" ">--Please Select Product From the list--</option>
                                                    @foreach ($products as $product)
                                                <option {{$product->id == $production->adoptor_product_id ? 'selected': ''}} value="{{$product->id}}">{{$product->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Packs</label>
                                            <input type="number" name="packs" placeholder="Packs" class="form-control" required value="{{$production->packs}}">
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Production Date</label>
                                            <input type="date"   name="date" class="form-control" required value="{{$production->dateProduced}}">
                                            </div>
                                            </div>
                                            
                                        </div>
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
                            @else 
                            <div class="alert alert-primary float-right" role="alert">
                            <h5>Total Productions: {{$productions->count()}}</h5>
                        </div>
                            @foreach ($productions as $key=>$production)
                            @if($production->packs == 0)
                                <tr style="background-color:papayawhip; color:silver">
                            @else 
                                <tr>
                            @endif
                                <td>{{$key+1}}</td>
                                <td>{{$production->name}}</td>
                                <td>{{$production->packs}}</td>
                                <td>{{date('F d, Y', strtotime($production->dateProduced))}}</td>
                                <td>
                                    @if ($production->RawMaterialUsed->count() <= 0)
                                    <span class="badge badge-danger">Please Select Raw Material/s used</span>
                                    @else
                                    <center><span class="badge badge-primary">{{$production->RawMaterialUsed->count()}}</span></center>
                                    @endif
                                </td>
                                <td>
                                    <ul class="d-flex justify-content-center">
                                        <li class="mr-3" data-toggle="tooltip" title="View Information">
                                        <a href="{{route('user.production.show',$production->id)}}" class="btn btn-rounded btn-primary  btn-xs"><i class="fa fa-eye"></i></a>
                                        </li>
                                    <li class="mr-3" data-toggle="modal" data-target="#EditProouction-{{$production->id}}" >
                                            <button class="btn btn-rounded btn-warning  btn-xs" data-toggle="tooltip" title="Update Information"><i class="fa fa-edit"></i></button>
                                        </li>
                                        @if($production->packs == 0)
                                        <li data-toggle="tooltip" title="Delete">
                                            <button type="button" class="btn btn-rounded btn-danger  btn-xs" disabled><i class="ti-trash"></i></button>
                                        </li>
                                        
                                        @else 
                                        <li data-toggle="tooltip" title="Delete">
                                                <button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$production->id}})"><i class="ti-trash"></i></button>
                                            </li>
                                            <form id="delete-{{$production->id}}" action="{{route('user.production.destroy',$production->id)}}" method="POST" style="display:none">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                        @endif
                                        
                                        </ul>
                                </td>
                                </tr>

                                <div class="modal fade" id="EditProouction-{{$production->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Production Update</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="{{route('user.production.update',$production->id)}}" method="POST">
                                    @csrf
                                    @method('PUT')
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Product Name</label>
                                                <select class="form-control" name="product" id="product">
                                                    <option value=" ">--Please Select Product From the list--</option>
                                                    @foreach ($products as $product)
                                                <option {{$product->id == $production->adoptor_product_id ? 'selected': ''}} value="{{$product->id}}">{{$product->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Packs</label>
                                            <input type="number" name="packs" placeholder="Packs" class="form-control" required value="{{$production->packs}}">
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Production Date</label>
                                            <input type="date"   name="date" class="form-control" required value="{{$production->dateProduced}}">
                                            </div>
                                            </div>
                                            
                                        </div>
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
                            @endif
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
<script src="{{asset('js/select2.min.js')}}"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script>
         $('[data-toggle="tooltip"]').tooltip();
        $(document).ready( function () {
                $('.table').DataTable();
                $('.select').select2({});
            });
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