@extends('layouts.backend.user.app')
@section('title','Product Sample - ')
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
                    <li><a href="{{route('user.productSample.index')}}">Product Sample</a></li>
                        <li><span><i class=" fa fa-ban color-default">&nbsp;</i> index</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="main-content-inner"><br>
        <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                <a href="{{route('user.productSample.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-plus-circle">&nbsp;</i>Add Product Sample</a>
            <div class="single-table">
                <div class="data-tables datatable-dark">
                    <table class="table table-hover progress-table text-center">
                        <thead class="text-uppercase">
                        <tr>
                            <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                            <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Name</th>
                            <th scope="col" style="width:20ch"><i class="fa fa-pencil color-default">&nbsp;</i>Packs</th>
                            <th scope="col"><i class="fa fa-calendar color-default">&nbsp;</i>Date</th>
                            <th scope="col"><i class="fa fa-book color-default">&nbsp;</i>note</th>
                            <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach ($productSamples as $key=>$sample)
                                <tr>
                                    <td>{{$key+1}}</td>
                                    <td>{{$sample->Production->AdoptorProduct->name}}</td>
                                    <td>{{$sample->packs}}</td>
                                    <td> {{date('M-d-Y H:i:A', strtotime($sample->created_at))}}</td>
                                    <td>{{$sample->note}}</td>
                                    <td>
                                        <ul class="d-flex justify-content-center">
                                            <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                            <button data-toggle="modal" data-target="#editsample-{{$sample->id}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></button>
                                            </li>
                                            <li data-toggle="tooltip" title="Delete">
                                                <button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$sample->id}})"><i class="ti-trash"></i></button>
                                            </li>
                                            <form id="delete-{{$sample->id}}" action="{{route('user.productSample.destroy',$sample->id)}}" method="POST" style="display:none">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                        </ul>
                                    </td>
                                </tr>

                                <!-------------------------------EDIT Product Sample MODAL------------------------------------>
                                <div class="modal fade" id="editsample-{{$sample->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                     <form action="{{route('user.productSample.update',$sample->id)}}" method="POST">
                                        @csrf
                                        @method('PUT')
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-info color-default">&nbsp;</i>
                                                    Product Sample Information
                                                </h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label>Product</label>
                                                            <input type="text" class="form-control" value="{{$sample->Production->AdoptorProduct->name}}" disabled>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Packs</label>
                                                            <input type="number" name="packs" placeholder="Packs" class="form-control" value="{{$sample->packs}}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Note</label>
                                                            <textarea name="note" class="form-control" placeholder="Note" cols="10" rows="5">{{$sample->note}}</textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger btn-rounded mb-3  pull-left" data-dismiss="modal"><i class="fa fa-arrow-left">&nbsp;</i>Cancel</button>
                                                    <button type="submit" class="btn btn-rounded mb-3 text-white button-default pull-right" ><i class="fa fa-database">&nbsp;</i>Save</button>
                                            </div>
                                        </div>
                                     </form>
                                    </div>
                                </div>
                            @endforeach
                        </tbody>
                    </table>
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