
@extends('layouts.backend.user.app')
@section('title','equipment - ')
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
                        <li><a href="{{route('user.equipment.index')}}">Assigned Equipment</a></li>
                            <li><span><i class="fa fa-info color-default">&nbsp;</i> Information</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
<div class="card">
    <div class="card-header">
    <a href="{{route('user.otherEquipment.create')}}" class="btn btn-rounded mb-3 text-white button-default btn-xs"><i class="fa fa-plus">&nbsp;</i>Add Other Equipment</a>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="FNRIEquipment-tab" data-toggle="tab" href="#NFRIEquipment" role="tab" aria-controls="NFRIEquipment" aria-selected="true">FNRI EQUIPMENT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="OtherEquipment-tab" data-toggle="tab" href="#OtherEquipment" role="tab" aria-controls="OtherEquipment" aria-selected="false">OTHER EQUIPMENT</a>
        </li>
      </ul>
      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="NFRIEquipment" role="tabpanel" aria-labelledby="FNRIEquipment-tab">
            <div class="table-responsive mt-3">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Note</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($stats as $item)
                        <tr>
                                <td>{{$item->name}}</td>
                                    <td>{!!$item->problem!!}</td>
                                    <td>
                                    @if ($item->status == true)
                                    <a href="#" class="badge badge-primary">Operational</a>
                                    @else
                                    <a href="#" class="badge badge-danger">Not Operational</a>
                                    @endif
                                </td>
                                <td>
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#equipment-{{$item->id}}">
                                        Update
                                    </button>
                                </td> 
                                </tr>
                                <!------------------------------------------MODAL SECTION ------------------------------------>
                                <div class="modal fade" id="equipment-{{$item->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <h5 class="modal-title" id="exampleModalLabel">Update Status</h5>
                                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                              </button>
                                            </div>
                                            <form action="{{route('user.update-equipment', $item->id)}}" method="POST">
                                                    @csrf
                                            <div class="modal-body">
                                                    <div class="form-group">
                                                        <label>Status</label>
                                                        <select name="status" id="status" class="form-control">
                                                        <option value="{{$item->status}}">
                                                            @if ($item->status == 1)
                                                            Operational
                                                            @else
                                                            Not Operational
                                                            @endif
                                                        </option>
                                                            @if ($item->status == 1)
                                                            <option value="0">Not Operational</option>
                                                            @else
                                                            <option value="1">Operational</option>
                                                            @endif
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Note:</label>
                                                        <textarea class="form-control" placeholder="note here" name="note" style="height:30ch">{!!$item->problem!!}</textarea>
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
                                    
                                    <!------------------------------------------END MODAL SECTION ------------------------------------>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        
        <div class="tab-pane fade" id="OtherEquipment" role="tabpanel" aria-labelledby="OtherEquipment-tab">
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="NFRIEquipment" role="tabpanel" aria-labelledby="FNRIEquipment-tab">
                    <div class="table-responsive mt-3">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Source of fund</th>
                                    <th>quantity</th>
                                    <th>status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($otherEquipment as $equipment)
                                    <tr>
                                        <td>{{$equipment->name}}</td>
                                        <td>{{$equipment->sourceOfFunds}}</td>
                                        <td>{{$equipment->quantity}}</td>
                                        <td>
                                            @if ($equipment->status == 'Operational')
                                            <a href="#" class="badge badge-primary">Operational</a>
                                            @else
                                            <a href="#" class="badge badge-danger">Not Operational</a>
                                            @endif
                                        </td>
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                                <li class="mr-3" data-toggle="tooltip" title="Show more">
                                                    <button class="btn btn-info btn-xs btn-rounded" data-toggle="modal" data-target="#equipmentDetails{{$equipment->id}}">
                                                        <i class="fa fa-eye"></i>
                                                    </button>
                                                </li>
                                                <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                                    <a href="{{route('user.otherEquipment.edit',$equipment->id)}}" class="btn btn-success btn-xs btn-rounded">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                </li>
                                                <li class="mr-3" data-toggle="tooltip" title="Delete">
                                                    <button class="btn btn-danger btn-xs btn-rounded" onclick="del({{$equipment->id}})">
                                                        <i class="fa fa-trash"></i>
                                                    </button>
                                                </li>
                                                <form id="delete-{{$equipment->id}}" action="{{route('user.otherEquipment.destroy',$equipment->id)}}" method="POST" style="display:none">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                        </td>
                                    </tr>
                                    <!----------------------MODAL EQUIPMENT DETAILS ---------------------------------------->
                                    <div class="modal fade" id="equipmentDetails{{$equipment->id}}" tabindex="-1" role="dialog" aria-labelledby="equipmentDetails" aria-hidden="true">
                                        <div class="modal-dialog modal-lg" role="document">
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <h5 class="modal-title" id="exampleModalLabel">EQUIPMENT INFORMARION</h5>
                                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                              </button>
                                            </div>
                                            <div class="modal-body row">
                                              <div class="col-md-12">
                                                <img src="{{asset('storage/otherEquipment/'.$equipment->image)}}" class="img-responsive">
                                                <h6>{{$equipment->name}}</h6>
                                              </div>
                                             
                                                <div class="col-md-5 mt-5">
                                                    <div class="form-group">
                                                        <label>Source of fund</label>
                                                        <input type="text" value="{{$equipment->sourceOfFunds}}" disabled class="form-control">
                                                    </div>
                                                </div> 
                                                <div class="col-md-3 mt-5">
                                                    <div class="form-group">
                                                        <label>Quantity</label>
                                                        <input type="text" value="{{$equipment->quantity}}" disabled class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 mt-5">
                                                    <div class="form-group">
                                                        <label>status</label><br>
                                                        @if ($equipment->status == 'Operational')
                                                        <button class="btn btn-success">Operational</a>
                                                        @else
                                                        <button class="btn btn-danger">Not Operational</a>
                                                        @endif   
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Desciption</label>
                                                      <h4>{!!$equipment->description!!}</h4>
                                                    </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Note</label>
                                                      <h4>{!!$equipment->note!!}</h4>
                                                    </div>
                                                  </div>      
                                                            
                                                           
                                                                 
                                                            
                                                        
                                             
                                            </div>
                                            <div class="modal-footer">
                                              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <!----------------------------------------end EQUIPMENT DETAILS ----------------------->
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
<script src="{{asset('js/select2.min.js')}}"></script>
    <script>
            $(document).ready( function () {
            $('.select').select2({});
            $('.table').DataTable();
        } );

    </script>
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
             text: "You want to delete this data ?",
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