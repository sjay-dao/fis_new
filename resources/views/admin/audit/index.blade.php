@extends('layouts.backend.admin.app')
@section('title','History - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">History<span class="badge badge-pill badge-primary"></span></h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.audit.index')}}">History</a></li>
                <li><span>index</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <br>
                <br>
                <div class="card">
                    <div class="card-header">
                        <form action="{{route('admin.history-search')}}" method="post">
                            <div class="row">
                             @csrf
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <select class="form-control" id="adoptor" name="adoptor" required>
                                            <option class="">--Please Select Adoptor--</option>
                                            @foreach ($adoptors as $key=> $adoptor)
                                                <option value="{{$adoptor->id}}">{{$adoptor->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-rounded mb-3 btn-success"><i class="fa fa-search">&nbsp;</i>Search</button>
                                        {{-- <a href="" class="btn btn-rounded mb-3 btn-info"><i class="fa fa-file-pdf-o">&nbsp;</i>Report</a> --}}
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>#</th>
                                    <th>Time</th>
                                    <th>Action</th>
                                    <th>Name</th>
                                    <th>New Values</th>
                                    <th>Old Values</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach ($audits as $key=>$audit)
                                        <tr>
                                            <td>{{$key+1}}</td>
                                            <td>on {{ date('M-d-Y | h:i A', strtotime($audit->created_at)) }}</td>
                                            @if ($audit->event == 'deleted')
                                            <td><span class="badge badge-pill badge-danger">{{$audit->event}}</span></td>
                                            @elseif($audit->event == 'updated')
                                            <td><span class="badge badge-pill badge-info">{{$audit->event}}</span></td>
                                            @elseif($audit->event == 'created')
                                            <td><span class="badge badge-pill badge-primary">{{$audit->event}}</span></td>
                                            @endif
                                            <td>{{$audit->adoptor}}</td>
                                            <td>{!!substr(strip_tags($audit->new), 0, 15)!!}....</td>
                                            <td>{!!substr(strip_tags($audit->old), 0, 15)!!}....</td>
                                            <td>
                                            <button class="btn btn-rounded btn-info  btn-xs " data-toggle="modal" data-target="#exampleModal{{$audit->id}}"><i class="fa fa-eye"></i></button>
                                            </td>
                                        </tr>
                                        <!---------------------MODAL SHOW INFORMATION------------------------->
                                        <div class="modal fade" id="exampleModal{{$audit->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-clock-o color-default">&nbsp;</i>History Infomation</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="card">
                                                        <div class="card-header">
                                                            <h5>{{$audit->adoptor}}</h5>
                                                        </div>
                                                        <div class="card-body">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="well">
                                                                        on {{ date('M-d-Y | h:i A', strtotime($audit->created_at)) }}
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="well">
                                                                            @if ($audit->event == 'deleted')
                                                                            <span class="badge badge-pill badge-danger">{{$audit->event}}</span>
                                                                            @elseif($audit->event == 'updated')
                                                                            <span class="badge badge-pill badge-info">{{$audit->event}}</span>
                                                                            @elseif($audit->event == 'created')
                                                                            <span class="badge badge-pill badge-primary">{{$audit->event}}</span>
                                                                            @endif
                                                                    </div>
                                                                </div>
                                                              
                                                                    @if ($audit->event == 'updated')
                                                                <div class="col-md-6"> <br> 
                                                                    <label>New Values</label><br>
                                                                {{$audit->new}}
                                                                </div>
                                                                <div class="col-md-6"> <br> 
                                                                    <label>Old Values</label><br>
                                                                    {{$audit->old}} 
                                                                </div>
                                                                @elseif($audit->event == 'deleted')
                                                                <div class="col-md-12"> <br> 
                                                                    <label>Data</label><br>
                                                                {{$audit->old}}
                                                                </div>
                                                                @else
                                                                <div class="col-md-12"> <br> 
                                                                    <label>Data</label><br>
                                                                {{$audit->new}}
                                                                </div>
                                                                @endif  
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                </div>
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
<script src="{{asset('js/select2.min.js')}}"></script>
<script>
    $(document).ready(function(){
        $('#adoptor').select2({
            placeholder : "Select Raw Materials"
        });
    });
</script>
<script>
 $(document).ready( function () {
        $('.table').DataTable();
        });
</script>
@endpush

   