@extends('layouts.backend.admin.app')
@section('title','Records - ')
@push('css')

@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Record<span class="badge badge-pill badge-primary">{{$records->count()}}</span></h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.record.index')}}">Record</a></li>
                <li><span>index</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <div class="row">
        <!-- seo fact area start -->
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="single-table">
                <div class="data-tables datatable-dark">
                    <table class="table table-hover progress-table text-center">
                        <thead class="text-uppercase">
                        <tr>
                            <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                            <th scope="col"><i class="fa fa-users color-default">&nbsp;</i>Adoptor Name</th>
                            <th scope="col"><i class="fa fa-list color-default">&nbsp;</i>Type</th>
                            <th scope="col"><i class="fa fa-list color-default">&nbsp;</i>Name</th>
                            <th scope="col"><i class="fa fa-list color-default">&nbsp;</i>description</th>
                            <th scope="col"><i class="fa fa-calendar color-default">&nbsp;</i>Date</th>
                            {{-- <th scope="col">Action</th> --}}
                        </tr>
                        </thead>
                        <tbody>
                          @foreach ($records as $key=>$record)
                          <tr>
                                <td>{{$key+1}}</td>
                                <td>{{$record->adoptor->name}}</td>
                                <td>{{$record->table}}</td>
                                <td>@if ($record->table == 'equipment')
                                    {{$record->equipment->name}}
                                @else
                                {{$record->product->name}}
                                @endif</td>
                                <td>{{$record->description}}</td>
                                <td> {{date('M-d-Y h:i:A', strtotime($record->created_at))}}</td>
                                {{-- <td><button class="btn btn-rounded mb-3 text-white button-default" data-toggle="modal" data-target="#showRecord"><i class="fa fa-eye"></i></button></td>
                                <div class="modal fade" id="showRecord" tabindex="-1" role="dialog" aria-labelledby="showRecord" aria-hidden="true">
                                    <div class="modal-dialog modal-lg" role="document">
                                      <div class="modal-content">
                                        <div class="modal-header">
                                          <h5 class="modal-title" id="showRecord">Records</h5>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                          </button>
                                        </div>
                                        <div class="modal-body">
                                          
                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                          <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                      </div>
                                    </div>
                                  </div> --}}
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
   <script>
    $(document).ready( function () {
        $('.table').DataTable();
    } );
</script>
   @endpush


