@extends('layouts.backend.user.app')
@section('title','Show Production Information - ')
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
                            <li><a href="{{route('user.production.index')}}">Production</a></li>
                            <li><span>Details</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    <div class="main-content-inner"><br>
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 style="text-align:center">
                       
                        Inforamtion
                        <a href="{{ route('user.production.index') }}">
                        <button class="btn btn-default btn-xs button-default btn-rounded float-right" style="color:white">
                            <i class="fa fa-arrow-left">&nbsp;</i>
                            Back
                        </button>
                        </a>
                    </h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="form-control">
                                <label><i class="fa fa-product-hunt">&nbsp;</i>Product</label>
                                <h6><strong>{{$production->AdoptorProduct->name}}</strong></h6>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="form-control">
                                <label><i class="fa fa-tags">&nbsp;</i>Packs Produced</label>
                                <h6><strong>{{$production->packs}}</strong></h6>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="form-control">
                                <label><i class="fa fa-calendar">&nbsp;</i>Production Date</label>
                                <h6><strong>{{$production->dateProduced}}</strong></h6>
                            </div><br>
                        </div>
                        
                    </div><br>
                  <div class="card">
                      <div class="card-header">
                          <h5>Raw Materials
                              @if ($rawMatUseds->count() >= 1)
                              <span class="badge badge-pill badge-primary">{{$rawMatUseds->count()}}</span>
                              @endif
                          </h5>
                      </div>
                    <div class="card-body">
                            <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th><i class="fa fa-list">&nbsp;</i></th>
                                    <th><i class="fa fa-industry">&nbsp;</i> Raw Material</th>
                                    <th><i class="fa fa-list-ol">&nbsp;</i>Quantity</th>
                                    <th>Action<i class="btn btn-success btn-xs btn-rounded fa fa-plus float-right" data-toggle="modal" title="Add Raw Material" data-target="#addRawMat">Add</i></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @if ($rawMatUseds->count() <= 0)
                                    <tr><div class="alert alert-danger"><h6><i class="fa fa-empty"></i>Empty</h6></div></tr>
                                    @endif
                                  @foreach ($rawMatUseds as $key=>$rawMatUsed)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td>{{$rawMatUsed->RawMaterial->rawMats->name}}</td>
                                        <td>{{$rawMatUsed->quantity}}-{{$rawMatUsed->RawMaterial->extension}}</td>
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                            <li class="mr-3" data-toggle="modal" title="Update Information" data-target="#editRawMaterial-{{$rawMatUsed->id}}">
                                                    <button class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></button>
                                                </li>
                                               <li data-toggle="tooltip" title="Delete">
                                                    <button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$rawMatUsed->id}})"><i class="ti-trash"></i></button>
                                                </li>
                                                <form id="delete-{{$rawMatUsed->id}}" action="{{route('user.RawMaterialUsed.destroy',$rawMatUsed->id)}}" method="POST" style="display:none">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                            </ul>
                                        </td>
                                    </tr>
                                    <!--------modal edit raw materials section ---------->
                            <div class="modal fade" id="editRawMaterial-{{$rawMatUsed->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Update Raw Material</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="{{route('user.RawMaterialUsed.update',$rawMatUsed->id)}}" method="post">
                                       @csrf
                                       @method('PUT')
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <h6>Raw Materials</h6>
                                                        <input type="text" value="{{$rawMatUsed->RawMaterial->rawMats->name}}" class="form-control" disabled>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <h6>Quantity</h6>
                                                    <input type="number" class="form-control" placeholder="Quantity" name="quantity" required value="{{$rawMatUsed->quantity}}">
                                                    <input type="hidden" name="production" value="{{$production->id}}">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary btn-rounded btn-danger" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-default btn-rounded button-default" style="color:white">Save</button>
                                        </div>
                                    </form>
                                    </div>
                                </div>
                                </div>
                                <!--------edit modal  raw materials section ---------->
                                  @endforeach
                                </tbody>
                        </table>
                        <!--------modal add raw materials section ---------->
                        <div class="modal fade" id="addRawMat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Add Raw Material</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="{{route('user.RawMaterialUsed.store')}}" method="post">
                               @csrf
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <h6>Raw Materials</h6>
                                                <select class="form-control" name="rawmat" id="rawmat" required>
                                                    <option value="">--Please Select Raw Materials--</option>
                                                    @foreach ($rawMats as $item)
                                                    <option value="{{$item->id}}">{{strtoupper($item->rawMats->name)}}&nbsp;({{$item->quantity}}&nbsp;{{$item->extension}} available)</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <h6>Quantity</h6>
                                            <input type="number" class="form-control" placeholder="Quantity" name="quantity" required>
                                            <input type="hidden" name="production" value="{{$production->id}}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary btn-rounded btn-danger" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-default btn-rounded button-default" style="color:white">Save</button>
                                </div>
                                </div>
                           </form>
                        </div>
                        </div>
                        <!--------end modal add raw materials section ---------->
                    </div>
                  </div>
                </div>
            </div>                   
        </div>
    </div>
</div>
@endsection 
@push('js')

 <script>
     $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip();
  
     });
   
 </script>
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