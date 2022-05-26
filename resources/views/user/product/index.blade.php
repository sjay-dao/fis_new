@extends('layouts.backend.user.app')
@section('title','Products - ')
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
                            <li><a href="{{route('user.product.index')}}">Product</a></li>
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
                    <a href="{{route('user.product.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-user-plus">&nbsp;</i>Add product</a>
                    {{-- @if ($products->count() >= 1)
                    <a href="{{route('user.product.report')}}" target="_blank" class="btn btn-rounded mb-3 btn-info" data-toggle="tooltip" title="Generate Report"><i class="fa fa-print"></i></a>
                    @endif --}}
                    <div class="single-table">
                    <div class="data-tables datatable-dark">
                        <table class="table table-hover progress-table text-center">
                            <thead class="text-uppercase">
                            <tr>
                                <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                <th scope="col"><i class="fa fa-image color-default">&nbsp;</i>Image</th>
                                <th scope="col"><i class="fa fa-product-hunt color-default">&nbsp;</i>Name</th>
                                <th scope="col"><i class="fa fa-cog color-default">&nbsp;</i>Technology</th>
                                <th scope="col"><i class="fa fa-cog color-default">&nbsp;</i>Grams per Pack</th>
                                <th scope="col"><i class="fa fa-book color-default">&nbsp;</i>Original Price</th>
                                <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @if ($products->count() <= 0)
                                    <div class="alert alert-primary">
                                        <h6><i class="fa fa-folder-open">&nbsp;</i>No product's Found</h6>
                                    </div>
                                @endif
                                @foreach($products as $key=>$product)
                                    <tr>
                                        <td>{{$key+1}}</td>
                          
                                        <td style="border-radius: 50%; width:10%;"><img src="{{asset('storage/adoptorProducts/'.$product->image)}}" class="img-responsive" style="height:2cm"></td>
                                        <td><strong class="float-left">{{strtoupper($product->name)}}</strong></td>
                                        <td><strong class="float-left">{{strtoupper($product->Product->name)}}</strong></td>
                                      <td>{{$product->grams}} - g</td>
                                      <td>{{$product->originalPrice}}</td>
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                                {{-- <li class="mr-3" data-toggle="tooltip" title="View Information">
                                                <a href="{{route('user.product.show',$product->id)}}" class="btn btn-rounded btn-primary  btn-xs"><i class="fa fa-eye"></i></a>
                                                </li> --}}
                                                <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                                <a  href="{{route('user.product.edit',$product->id)}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></a>
                                                </li>
                                                <li data-toggle="tooltip" title="Delete">
                                                    <button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$product->id}})"><i class="ti-trash"></i></button>
                                                </li>
                                                <form id="delete-{{$product->id}}" action="{{route('user.product.destroy',$product->id)}}" method="POST" style="display:none">
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
  
