@extends('layouts.backend.admin.app')
@section('title','Dashboard - ')
@push('css')
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">Dashboard</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
                <li><span>index</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
            <div class="main-content-inner">
                <div class="row">
                    <!-- seo fact area start -->
                    <div class="col-lg-8"><br>
                        <div class="row">
                            <div class="col-md-6 mb-3 mb-lg-0">
                                    <div class="card">
                                            @if ($notOpEquips->count() == 0)
                                            <div class="seo-fact sbg2">
                                            @else
                                            <div class="seo-fact sbg3">
                                            @endif
                                            <a href="#" data-target="#NotOperationalEquipmentList" data-toggle="modal" class="p-4 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-cogs"></i>Not Operational Equipment</div>
                                                <h2>{{$notOpEquips->count()}}</h2>
                                            </a>
                                            <!-- Modal -->
                                            <div class="modal fade" id="NotOperationalEquipmentList" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLongTitle">Not Operational Equipment List</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                                @if ($notOpEquips->count() <= 0)
                                                                <div class="col-md-12">
                                                                    <div class="alert alert-info">
                                                                        <h4>No Data Found !!!</h4>
                                                                    </div>
                                                                </div>
                                                                @endif
                                                            @foreach ($notOpEquips as $key=>$equip)
                                                            <div class="col-md-1">
                                                                    <div class="well"><b>#</b></div><br>
                                                                    {{$key+1}}
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <div class="well">
                                                                        <b>Adoptor</b>
                                                                    </div><br>
                                                                    {{$equip->adoptor}}
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="well">
                                                                        <b>Equipment</b>
                                                                    </div><br>
                                                                    {{$equip->equipment}}
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="well">
                                                                        <b>Date</b>
                                                                    </div><br>
                                                                    <span class="badge badge-pill badge-danger"> {{date('M-d-Y | h:i A', strtotime($equip->date)) }} </span>
                                                                </div>
                                                                <div class="col-md-12"><br>
                                                                    <div class="card bg-light mb-3" style="max-width: 47rem;">
                                                                            <div class="card-header">Note</div>
                                                                            <div class="card-body">
                                                                              
                                                                              <p class="card-text">{{$equip->note}}</p>
                                                                            </div>
                                                                          </div>
                                                                </div>
                                                            @endforeach
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                    <button type="button" class="btn btn-rounded button-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                            <!------end modal------->
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3 mb-lg-0">
                                        <div class="card">
                                            @if ($notOpTechs->count() == 0)
                                            <div class="seo-fact sbg2">
                                            @else
                                            <div class="seo-fact sbg3">
                                            @endif
                                                <a href="#" class="p-4 d-flex justify-content-between align-items-center" data-target="#NotOperationalTech" data-toggle="modal">
                                                    <div class="seofct-icon"><i class="fa fa-product-hunt"></i>Not Operational Technologies</div>
                                                    <h2>{{$notOpTechs->count()}}</h2>
                                                </a>
                                                <!-- Modal -->
                                            <div class="modal fade" id="NotOperationalTech" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLongTitle">Not Operational Technologies List</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                @if ($notOpTechs->count() <= 0)
                                                                <div class="col-md-12">
                                                                    <div class="alert alert-info">
                                                                        <h4>No Data Found !!!</h4>
                                                                    </div>
                                                                </div>
                                                                @endif
                                                                @foreach ($notOpTechs as $key=>$tech)
                                                                <div class="col-md-1">
                                                                        <div class="well"><b>#</b></div><br>
                                                                        {{$key+1}}
                                                                    </div>
                                                                    <div class="col-md-5">
                                                                        <div class="well">
                                                                            <b>Adoptor</b>
                                                                        </div><br>
                                                                        {{$tech->adoptor}}
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="well">
                                                                            <b>Technology</b>
                                                                        </div><br>
                                                                        {{$tech->technology}}
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="well">
                                                                            <b>Date</b>
                                                                        </div><br>
                                                                        <span class="badge badge-pill badge-danger"> {{date('M-d-Y | h:i A', strtotime($tech->date)) }} </span>
                                                                    </div>
                                                                    <div class="col-md-12"><br>
                                                                        <div class="card bg-light mb-3" style="max-width: 47rem;">
                                                                            <div class="card-header">Note</div>
                                                                            <div class="card-body">
                                                                                
                                                                                <p class="card-text">{{$tech->note}}</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                @endforeach
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                        <button type="button" class="btn btn-rounded button-default" data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                    </div>
                                                </div>
                                                <!------end modal------->
                                            </div>
                                        </div><br>
                                    </div>
                            <div class="col-md-4 mb-3 mb-lg-0">
                                <div class="card">
                                    <div class="seo-fact sbg1">
                                        <div class="p-4 d-flex justify-content-between align-items-center">
                                            <div class="seofct-icon">Adoptors</div>
                                            <h2>{{$adoptors->count()}}</h2>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3 mb-lg-0">
                                <div class="card">
                                    <div class="seo-fact sbg2">
                                        <div class="p-4 d-flex justify-content-between align-items-center">
                                            <div class="seofct-icon">Technologies</div>
                                        <h2>{{$techs->count()}}</h2>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3 mb-lg-0">
                                <div class="card">
                                    <div class="seo-fact sbg4">
                                        <div class="p-4 d-flex justify-content-between align-items-center">
                                            <div class="seofct-icon">Equipment</div>
                                            <h2>{{$equipment->count()}}</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {{-- <div class="col-md-3 mb-3 mb-lg-0">
                                <div class="card">
                                    <div class="seo-fact sbg4">
                                        <div class="p-4 d-flex justify-content-between align-items-center">
                                            <div class="seofct-icon">Raw Materials</div>
                                            <h2>{{$rawMats->count()}}</h2>
                                        </div>
                                    </div>
                                </div>
                            </div> --}}
                            <div class="col-md-12">   <br/><br/>
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                      <a class="nav-link active" id="Graph-tab" data-toggle="tab" href="#Graph" role="tab" aria-controls="Graph" aria-selected="true"><i class="fa fa-bar-chart color-default">&nbsp;</i>Graph</a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link" id="Data-tab" data-toggle="tab" href="#Data" role="tab" aria-controls="Data" aria-selected="false"><i class="fa fa-table color-default">&nbsp;</i>Data Table</a>
                                    </li>
                                  </ul>
                                  <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="Graph" role="tabpanel" aria-labelledby="Graph-tab">
                                        {!! $areaspline_chart->html() !!}
                                    </div>

                                    <div class="tab-pane fade" id="Data" role="tabpanel" aria-labelledby="Data-tab"><br>
                                        <table class="table">
                                            <h3><center>Rice-mongo instant</center></h3>
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Date</th>
                                                    <th>Total Sale</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                               @foreach ($sales as $key=>$sale)
                                                <tr>
                                                <td>{{$key+1}}</td>
                                                    <td>{{$sale->sale_month}}</td>
                                                    <td>{{$sale->total}}</td>
                                                </tr>
                                               @endforeach
                                            </tbody>
                                        </table>

                                        <table class="table">
                                                <h3><center>Ready-to-cook blend</center></h3>
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Date</th>
                                                        <th>Total Sale</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                   @foreach ($sales15 as $key=>$sale15)
                                                    <tr>
                                                    <td>{{$key+1}}</td>
                                                        <td>{{$sale15->sale_month}}</td>
                                                        <td>{{$sale15->total}}</td>
                                                    </tr>
                                                   @endforeach
                                                </tbody>
                                            </table>

                                            <table class="table">
                                                    <h3><center>Rice-Mongo Curls</center></h3>
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Date</th>
                                                            <th>Total Sale</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                       @foreach ($sales16 as $key=>$sale16)
                                                        <tr>
                                                        <td>{{$key+1}}</td>
                                                            <td>{{$sale16->sale_month}}</td>
                                                            <td>{{$sale16->total}}</td>
                                                        </tr>
                                                       @endforeach
                                                    </tbody>
                                                </table>

                                                <table class="table">
                                                        <h3><center>Rice-Mongo Crunchies</center></h3>
                                                        <thead>
                                                            <tr>
                                                                <th>#</th>
                                                                <th>Date</th>
                                                                <th>Total Sale</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                           @foreach ($sales17 as $key=>$sale17)
                                                            <tr>
                                                            <td>{{$key+1}}</td>
                                                                <td>{{$sale17->sale_month}}</td>
                                                                <td>{{$sale17->total}}</td>
                                                            </tr>
                                                           @endforeach
                                                        </tbody>
                                                    </table>
                                            
                                    </div>

                                    


                                  </div>             
                                </div>
                        </div>          
                    </div>
                    <div class="col-xl-3 col-ml-4 col-lg-4 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">History</h4>
                                <div class="timeline-area">
                                    @foreach ($audits as $audit)
                                        <div class="timeline-task">
                                                 @if ($audit->event == 'updated')
                                                 <div class="icon sbg4">
                                                <i class="fa fa-refresh"></i>
                                                @elseif($audit->event == 'deleted')
                                                <div class="icon sbg3">
                                                <i class="fa fa-warning"></i>
                                                @elseif($audit->event == 'created')
                                                <div class="icon sbg2">
                                                <i class="fa fa-plus"></i>
                                                @endif
                                            </div>
                                            <div class="tm-title">
                                                <h4>{{$audit->adoptor}} @if ($audit->event == 'updated')
                                                    <strong style="color:cyan">{{$audit->event}} a data into their records</strong>
                                                @elseif($audit->event == 'deleted')
                                                <strong style="color:brown">{{$audit->event}} a data into their records</strong>
                                                @elseif($audit->event == 'created')
                                                <strong style="color:green">{{$audit->event}} a data into their records</strong>
                                                @endif</h4>
                                                <span class="time"><i class="ti-time"></i>on {{ date('M-d-Y | h:i A', strtotime($audit->created_at)) }} </span>
                                            </div>
                                            <a class="btn btn-info btn-xs" data-toggle="modal" data-target="#exampleModal{{$audit->id}}">See more
                                            </a>
                                        </div>
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
                                                                <div class="col-md-6"><br> 
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
                                    <div class="well">
                                        <a href="{{route('admin.audit.index')}}">See all History</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                    <!-- testimonial area end -->
                </div>
            </div>
             
                
        </div>
        {!! Charts::scripts() !!}
    {!! $areaspline_chart->script() !!}

       @endsection 
       @push('js')

       
    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
  
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
  
    <!-- start amchart js -->
    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/pie.js"></script>
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/animate/animate.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
 
  
       @endpush
  
