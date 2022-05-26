
@extends('layouts.backend.user.app')
@section('title','Technology Adopted - ')
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
                            <li><a href="#">Technologies</a></li>
                            <li><span>Index</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
        @foreach ($stats as $item)
                <div class="col-md">
                    <div class="card mt-4" style="width: 18rem;" >
                        <img class="card-img-top" src="{{ asset('storage/products/'.$item->image)}}"alt="Card image cap">
                        <div class="card-body">
                          <h5 class="card-title">{{$item->name}}</h5>
                          <p class="card-text">{!!substr(strip_tags($item->description), 0, 100)!!}...</p>
                        @if ($item->status == 1)
                        <a href="#" class="btn btn-primary btn-block" data-toggle="modal" data-target="#equipment-{{$item->id}}">Operational&nbsp;<i class="fa fa-check-circle" sty></i></a>
                        @else
                        <a href="#" class="btn btn-danger btn-block" data-toggle="modal" data-target="#equipment-{{$item->id}}">Not operational&nbsp;<i class="fa fa-exclamation-triangle"></i></a>
                        @endif
                        </div>
                      </div>
                </div>
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
                        <form action="{{route('user.update-technology', $item->id)}}" method="POST">
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
                                    <textarea class="form-control" placeholder="note here" name="note" style="height:30ch">{!!$item->note!!}</textarea>
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
        </div>
{{-- <div class="card"><br>
    <div class="card-header">
        <div class="table-responsive">
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
                                <td>{!!$item->note!!}</td>
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
                            
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div> --}}
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
@endpush