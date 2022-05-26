@extends('layouts.backend.admin.app')
@section('title','Adoptors - ')
@push('css')
    
@endpush
@section('area')
<div class="col-sm-6">
    <div class="breadcrumbs-area clearfix">
        <h4 class="page-title pull-left">Adoptors</h4>
        <ul class="breadcrumbs pull-left">
            <li><a href="{{route('admin.adoptor.index')}}">Adoptor</a></li>
            <li><span>Show</span></li>
        </ul>
    </div>
</div>
@endsection
@section('content')
<div class="main-content-inner"><br>
    <a  href="{{ url()->previous() }}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-chevron-circle-left">&nbsp;</i>Go Back</a>
    <div class="row">
        <div class="col-md-12">
            <div class="card card-bordered">
                <img class="card-img-top img-fluid" src="{{ asset('storage/adoptors/'.$adoptor->image)}}" alt="image" style="height:50ch"">
            </div>
        </div>
        <div class="col-md-3 mt-5">
            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <a class="nav-link active" id="v-pills-Sales-tab" data-toggle="pill" href="#v-pills-Sales" role="tab" aria-controls="v-pills-Sales" aria-selected="true">Sales</a>
                <a class="nav-link" id="v-pills-Equipment-tab" data-toggle="pill" href="#v-pills-Equipment" role="tab" aria-controls="v-pills-Equipment" aria-selected="false">Equipment</a>
                <a class="nav-link" id="v-pills-otherEquipment-tab" data-toggle="pill" href="#v-pills-otherEquipment" role="tab" aria-controls="v-pills-otherEquipment" aria-selected="false">Other equipment</a>
                <a class="nav-link" id="v-pills-Adopted-Technologies-tab" data-toggle="pill" href="#v-pills-Adopted-Technologies" role="tab" aria-controls="v-pills-Adopted-Technologies" aria-selected="false">Adopted Technologies</a>
                <a class="nav-link" id="v-pills-Raw-Materials-tab" data-toggle="pill" href="#v-pills-Raw-Materials" role="tab" aria-controls="v-pills-Raw-Materials" aria-selected="false">Raw Materials</a>
                <a class="nav-link" id="v-pills-Rejects-tab" data-toggle="pill" href="#v-pills-Rejects" role="tab" aria-controls="v-pills-Rejects" aria-selected="false">Rejects</a>
                <a class="nav-link" id="v-pills-Product-Sample-tab" data-toggle="pill" href="#v-pills-Product-Sample" role="tab" aria-controls="v-pills-Product-Sample" aria-selected="false">Product Samples</a>
              </div>
        </div>
       
            <div class="col-md-8 mt-5">
                <div class="tab-content" id="v-pills-tabContent">
                    <!--Sales-->
                    <div class="tab-pane fade show active" id="v-pills-Sales" role="tabpanel" aria-labelledby="v-pills-Sales-tab">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                              <a class="nav-link active" id="Graph-tab" data-toggle="tab" href="#Graph" role="tab" aria-controls="Graph" aria-selected="true"><i class="fa fa-bar-chart color-default">&nbsp;</i>Graph</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" id="Data-tab" data-toggle="tab" href="#Data" role="tab" aria-controls="Data" aria-selected="false"><i class="fa fa-table color-default">&nbsp;</i>Data Table</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="Graph" role="tabpanel" aria-labelledby="Graph-tab">{!! $areaspline_chart->html() !!}</div>
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
                                        @foreach ($sales14 as $key=>$sale)
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
                    <!--End Sales-->

                    <!--Equipment-->
                    <div class="tab-pane fade show" id="v-pills-Equipment" role="tabpanel" aria-labelledby="v-pills-Equipment-tab">
                        <div class="card">
                            <div class="card-header">
                                <h4><i class="fa fa-cogs"></i> EQUIPMENT LIST</h4>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover progress-table text-center">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>EQUIPMENT</th>
                                            <th>status</th>
                                            <th>note</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($equipment as $key=>$equip)
                                        <tr>
                                            <td>{{$key+1}}</td>
                                            <td>{{$equip->name}}</td>
                                            <td>@if ($equip->status != 1)
                                                <span class="badge badge-pill badge-danger">Not Operational</span>
                                                @else 
                                                <span class="badge badge-pill badge-primary">Operational</span>
                                            @endif
                                            </td>
                                            <td>{{$equip->problem}}</td>
                                            <td>
                                            <a href="{{route('admin.equipment.show',$equip->id)}}" class="btn btn-rounded btn-success btn-xs"><i class="fa fa-eye"></i></a>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--End otherEquipment-->
                    <!--Equipment-->
                    <div class="tab-pane fade show" id="v-pills-otherEquipment" role="tabpanel" aria-labelledby="v-pills-otherEquipment-tab">
                        <div class="card">
                            <div class="card-header">
                                <h4><i class="fa fa-cogs"></i> OTHER EQUIPMENT LIST</h4>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover progress-table text-center">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>EQUIPMENT</th>
                                            <th>SOURCE OF FUND</th>
                                            <th>STATUS</th>
                                            
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($otherEquipment as $key=>$otherEquip)
                                        <tr>
                                            <td>{{$key+1}}</td>
                                            <td>{{$otherEquip->name}}</td>
                                            <td>{{$otherEquip->sourceOfFunds}}</td>
                                            <td>@if ($otherEquip->status === 'Not Operational')
                                                <span class="badge badge-pill badge-danger">Not Operational</span>
                                                @else 
                                                <span class="badge badge-pill badge-primary">Operational</span>
                                            @endif
                                            </td>
                                            
                                            <td>
                                            <button class="btn btn-rounded btn-success button-defualt btn-xs" data-toggle="modal" data-target="#equipmentDetails{{$otherEquip->id}}"><i class="fa fa-eye"></i></a>
                                                
                                            </td>
                                        </tr>
                                        <!----------------------MODAL EQUIPMENT DETAILS ---------------------------------------->
                                    <div class="modal fade" id="equipmentDetails{{$otherEquip->id}}" tabindex="-1" role="dialog" aria-labelledby="equipmentDetails" aria-hidden="true">
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
                                                <img src="{{asset('storage/otherEquipment/'.$otherEquip->image)}}" class="img-responsive">
                                                <h6>{{$otherEquip->name}}</h6>
                                              </div>
                                             
                                                <div class="col-md-5 mt-5">
                                                    <div class="form-group">
                                                        <label>Source of fund</label>
                                                        <input type="text" value="{{$otherEquip->sourceOfFunds}}" disabled class="form-control">
                                                    </div>
                                                </div> 
                                                <div class="col-md-3 mt-5">
                                                    <div class="form-group">
                                                        <label>Quantity</label>
                                                        <input type="text" value="{{$otherEquip->quantity}}" disabled class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 mt-5">
                                                    <div class="form-group">
                                                        <label>status</label><br>
                                                        @if ($otherEquip->status == 'Operational')
                                                        <button class="btn btn-success">Operational</a>
                                                        @else
                                                        <button class="btn btn-danger">Not Operational</a>
                                                        @endif   
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Desciption</label>
                                                      <h4>{!!$otherEquip->description!!}</h4>
                                                    </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Note</label>
                                                      <h4>{!!$otherEquip->note!!}</h4>
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
                    <!--End otherEquipment-->

                    <!--Adopted-Technologies-->
                    <div class="tab-pane fade show" id="v-pills-Adopted-Technologies" role="tabpanel" aria-labelledby="v-pills-Adopted-Technologies-tab">
                        <div class="card">
                            <div class="card-header">
                                <h4><i class="fa fa-product-hunt">&nbsp;</i>TECHNOLOGIES LIST</h4>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover progress-table text-center">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Technology</th>
                                        <th>status</th>
                                        <th>note</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($techs as $key=>$tech)
                                        <tr>
                                        <td>{{$key+1}}</td>
                                        <td>{{$tech->name}}</td>
                                        <td>
                                            @if ($tech->status != 1)
                                                <span class="badge badge-pill badge-danger">Not Operational</span>
                                                @else 
                                                <span class="badge badge-pill badge-primary">Operational</span>
                                            @endif
                                        </td>
                                        <td>{{$tech->note}}</td>
                                        <td><a href="{{route('admin.product.show',$tech->id)}}" class="btn btn-rounded btn-success btn-xs"><i class="fa fa-eye"></i></a></td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--End Adopted-Technologies-->

                    <!--Raw-Materials-->
                    <div class="tab-pane fade show" id="v-pills-Raw-Materials" role="tabpanel" aria-labelledby="v-pills-Raw-Materials-tab">
                        <div class="card">
                            <div class="card-header">
                                <h4><i class="fa fa-industry">&nbsp;</i>RAW MATERIALS LIST</h4>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover progress-table text-center">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Raw Material</th>
                                            <th>extension</th>
                                            <th>note</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($rawmaterials as $key=>$rawmat)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{$rawmat->RawMats->name}}</td>
                                                <td>{{$rawmat->extension}}</td>
                                                <td>{!!$rawmat->note!!}</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--End Raw-Materials-->

                    <!--Rejects-->
                    <div class="tab-pane fade show" id="v-pills-Rejects" role="tabpanel" aria-labelledby="v-pills-Rejects-tab">
                        <div class="card">
                            <div class="card-header">
                                <h4><i class="fa fa-trash">&nbsp;</i>REJECTS LIST</h4>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover progress-table text-center">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Product</th>
                                            <th>Packs</th>
                                            <th>originalPrice</th>
                                            <th>note</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($rejects as $key=>$reject)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{$reject->Production->AdoptorProduct->name}}</td>
                                                <td>{{$reject->packs}}</td>
                                                <td>{{$reject->Production->AdoptorProduct->originalPrice}}</td>
                                                <td>{{$reject->note}}</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                     <!--End Rejects-->

                      <!--Product-Sample-->
                    <div class="tab-pane fade show" id="v-pills-Product-Sample" role="tabpanel" aria-labelledby="v-pills-Product-Sample-tab">
                        <div class="card">
                            <div class="card-header">
                                <h4>PRODUCT SAMPLES LIST</h4>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover progress-table text-center">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Product</th>
                                            <th>Packs</th>
                                            <th>Date</th>
                                            <th>note</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($productSamples as $key=>$sample)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{$sample->Production->AdoptorProduct->name}}</td>
                                                <td>{{$sample->packs}}</td>
                                                <td>{{date('M-d-Y H:i:A', strtotime($sample->created_at))}}</td>
                                                <td>{{$sample->note}}</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--End Product-Sample-->
                </div>
        </div>
    </div>
</div>
    {!! Charts::scripts() !!}
    {!! $areaspline_chart->script() !!}
    {!! $CF->script() !!}
@endsection 
@push('js')
<script>
 $(document).ready( function () {
                $('.table').DataTable();
            } );</script>
         
@endpush
  
