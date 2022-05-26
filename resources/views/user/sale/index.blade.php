@extends('layouts.backend.user.app')
@section('title','Sales - ')
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
                        <li><a href="{{route('user.sale.index')}}">Sale</a></li>
                            <li><span><i class=" fa fa-info color-default">&nbsp;</i> Index</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    <div class="main-content-inner"><br>
        <div class="row">
            <!-- seo fact area start -->
            <div class="col-lg-12 col-md-12 col-sm-12">
                <form action="{{route('user.sale.search')}}" method="POST">
                    @csrf
                   <div class="row">
                       <div class="col-md-2 mt-4">
                        <a href="{{route('user.sale.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-plus-circle">&nbsp;</i>Create Sale</a>
                        <a href="{{route('user.sale.report')}}" target="_blank" class="btn btn-rounded mb-3 btn-info" data-toggle="tooltip" title="" data-original-title="Generate Report"><i class="fa fa-print"></i></a> 
                        
                        </div>
                        <div class="col-md-3">
                            <label for="dateFrom">Date From&nbsp;<i class="fa fa-calendar"></i></label>
                            <input type="date" name="dateFrom" class="form-control" placeholder="Date From" required>
                        </div>
                        <div class="col-md-3">
                            <label for="dateTo">Date To&nbsp;<i class="fa fa-calendar"></i></label>
                            <input type="date" name="dateTo" class="form-control" placeholder="Date To" required>
                        </div>
                        <div class="col-md-3">
                            <label for="dateFrom">Type&nbsp;<i class="fa fa-users"></i></label>
                            <select class="form-control" name="type">
                                <option value="-">all</option>
                                <option value="1">Purchased</option>
                                <option value="0">Donated</option>
                            </select>
                        </div>
                        <div class="col-md-1 mt-4">
                            <button type="submit" class="btn btn-rounded mb-3 btn-primary">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
                        
                    <div class="single-table">
                    <div class="data-tables datatable-dark">
                        <table class="table table-hover progress-table text-center">
                            <thead class="text-uppercase">
                            <tr>
                                <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Name</th>
                                <th scope="col"><i class="fa fa-users color-default">&nbsp;</i>Customers</th>
                                <th scope="col"><i class="fa fa-at color-default">&nbsp;</i>Packs</th>
                                <th scope="col"><i class="fa fa-at color-default">&nbsp;</i>Price per Pack</th>
                                <th scope="col"><i class="fa fa-money color-default">&nbsp;</i>Total Price</th>
                                <th scope="col"><i class="fa fa-calendar color-default">&nbsp;</i>Date</th>
                                <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                            </thead>
                            <tbody id="dataTable">
                                @if ($sales->count() <= 0)
                                <div class="alert alert-primary">
                                    <h6><i class="fa fa-folder-open">&nbsp;</i>No Sales Found</h6>
                                </div>
                                @endif
                                @foreach($sales as $key=>$sale)
                                   @if ($sale->status == 'Donation')
                                       <tr style="background-color:orangered; color:white">
                                   @else
                                       
                                   @endif 
                                        <td>{{$key+1}}</td>
                                        <td><strong>{{$sale->Production->AdoptorProduct->name}}</strong></td>
                                        {{-- <td><strong> @if ($sale->description == '')
                                                N/A
                                                @else
                                                {{$sale->description}}  
                                            @endif</strong></td> --}}
                                        <td>{{$sale->Client->name}}</td>
                                        <td>{{$sale->quantity}}</td>
                                        <td>{{$sale->price}}</td>
                                        <td>{{number_format($sale->total)}}</td>
                                        <td>{{date('F d, Y', strtotime($sale->created_at))}}</td>
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                                <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                                <button data-toggle="modal" data-target="#editSale-{{$sale->id}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></button>
                                                </li>
                                                <li data-toggle="tooltip" title="Delete">
                                                    <button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$sale->id}})"><i class="ti-trash"></i></button>
                                                </li>
                                                <form id="delete-{{$sale->id}}" action="{{route('user.sale.destroy',$sale->id)}}" method="POST" style="display:none">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                            </ul>
                                        </td>
                                       </tr>
                                    </div>
                                   
                                    <div class="modal fade" id="editSale-{{$sale->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-info color-default">&nbsp;</i>Sale Information</h5>
                                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                              </button>
                                            </div>
                                        <form action="{{route('user.sale.update',$sale->id)}}" method="POST">
                                            @csrf
                                            @method('PUT')
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="from-group">
                                                            <label>Product</label>
                                                        <input type="text" class="form-control" value="{{$sale->production->AdoptorProduct->name}}" disabled>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label>Client</label>
                                                            <select class="form-control" name="client" id="client">
                                                                <option value="0">--Please Select Client From the list--</option>
                                                                @foreach ($clients as $client)
                                                            <option {{$sale->Client->id == $client->id ? 'selected': ''}} value="{{$client->id}}">{{$client->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Packs</label>
                                                        <input type="number" name="quantity" placeholder="Packs" class="form-control" value="{{$sale->quantity}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Price</label>
                                                        <input type="number" name="price" placeholder="Per packs" class="form-control" value="{{$sale->price}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Type</label>
                                                            <select class="form-control" name="type" required id="type">
                                                            <option value="{{$sale->status}}">{{$sale->status}}</option>
                                                                @if ($sale->status == 'Donation')
                                                                <option value="Purchase">Purchase</option>    
                                                                @else 
                                                                <option value="Donation">Donation</option>  
                                                                @endif
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label>Description</label>
                                                            <textarea name="description" class="form-control">{{$sale->description}}</textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                              <button type="button" class="btn btn-secondary float-left" data-dismiss="modal">Close</button>
                                              <button type="submit" class="btn btn-success float-right" >Save</button>
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
            <!-- testimonial area end -->
        </div>
    </div>
        </div>

    </div>
       @endsection 
       @push('js')
       <script src="{{asset('admin/assets/js/jquery.min.js')}}"></script>
       <script src="{{asset('admin/assets/js/chart.min.js')}}"></script>
       <script src="{{asset('admin/assets/js/chart.js')}}"></script>
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
  
