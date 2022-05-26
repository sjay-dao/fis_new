@extends('layouts.backend.user.app')
@section('title','Settings - ')
@push('css')
<link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
<script src="https://cloud.tinymce.com/5/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>   
@endpush
 
@section('content')
<div class="container"><br>
    <div class="page-title-area">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <div class="breadcrumbs-area clearfix">
                        <h4 class="page-title pull-left">{{Auth::user()->adoptor->name}}</h4>
                        <ul class="breadcrumbs pull-left">
                        <li><a href="{{route('user.dashboard')}}">Adoptor</a></li>
                            <li><span><i class=" fa fa-info color-default">&nbsp;</i> Information</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
            <div class="main-content-inner"><br>
    <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card border-success mb-3">
                            <form action="{{route('user.adoptor-update',Auth::user()->adoptor->id)}}" method="POST" class="form-control" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                               <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-product-hunt color-default">&nbsp;</i>Complete Name *</label>
                                            <input type="text" name="name" placeholder="Adoptor Name" class="form-control" value="{{Auth::user()->adoptor->name}}" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-map-marker color-default">&nbsp;</i>Complete Address *</label>
                                            <input type="text" name="address" placeholder="Adoptor Address" class="form-control" value="{{Auth::user()->adoptor->address}}" required>
                                        </div>
                                    </div>
                                    {{-- <div class="col-md-12">
                                        <label><i class="fa fa-child color-default">&nbsp;</i>Technology</label>
                                        <select class="form-control" id="technology" name="technology[]" multiple="multiple" >
                                            @foreach ($technologies as $key=> $tech)
                                                    <option 
                                                    @foreach(Auth::user()->adoptor->technologies as $technology)
                                                            {{ $technology->id == $tech->id ? 'selected' : '' }}
                                                    @endforeach value="{{$tech->id}}">{{$tech->name}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    {{-- <div class="col-md-12">
                                        <label><i class="fa fa-cogs color-default">&nbsp;</i>Equipment</label>
                                        <select class="form-control" id="equipments" name="equipments[]" multiple="multiple">
                                            @foreach ($equipment as $key=> $equip)
                                                    <option 
                                                    @foreach(Auth::user()->adoptor->equipments as $equipment)
                                                            {{ $equipment->id == $equip->id ? 'selected' : '' }}
                                                    @endforeach value="{{$equip->id}}">{{$equip->name}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    {{-- <div class="col-md-12">
                                        <label><i class="fa fa-industry color-default">&nbsp;</i>Raw Materials</label>
                                        <select class="form-control" id="rawMats" name="rawMats[]" multiple="multiple">
                                            @foreach ($rawMats as $key=> $rawMat)
                                                    <option 
                                                    @foreach(Auth::user()->adoptor->rawMaterials as $rawMaterial)
                                                            {{ $rawMaterial->id == $rawMat->id ? 'selected' : '' }}
                                                    @endforeach value="{{$rawMat->id}}">{{$rawMat->name}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-globe color-default">&nbsp;</i>Region *</label>
                                            <select name="region" id="region" class="form-control">
                                                <option value="{{Auth::user()->adoptor->region->id}}">{{Auth::user()->adoptor->region->name}}</option>
                                                <option value="">--Please Select Region--</option>
                                                @foreach ($regions as $region)
                                                    <option value="{{$region->id}}">{{$region->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    {{-- <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-balance-scale color-default">&nbsp;</i>Scale</label>
                                            <select name="scale" id="scale" class="form-control" disabled>
                                            <option value="{{Auth::user()->adoptor->scale}}">{{strtoupper(Auth::user()->adoptor->scale)}}</option>
                                                <option value="small">SMALL</option>
                                                <option value="medium">MEDIUM</option>
                                                <option value="large">LARGE</option>
                                            </select>
                                        </div>
                                    </div> --}}
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-image color-default">&nbsp;</i>Adoptor Image * <r style="color:darkred">Image size should not be > 2MB</r></label>
                                            <input type="file" name="image" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-mobile color-default">&nbsp;</i>Mobile Number *</label>
                                            <input type="number" name="mobile" placeholder="#####" class="form-control" value="{{Auth::user()->adoptor->mobile}}">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-phone color-default">&nbsp;</i>Telephone Number (optional)</label>
                                            <input type="number" name="telephone" placeholder="#####" class="form-control" value="{{Auth::user()->adoptor->telephone}}">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-fax color-default">&nbsp;</i>Fax Number (optional)</label>
                                            <input type="number" name="fax" placeholder="#####" class="form-control" value="{{Auth::user()->adoptor->fax}}">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-info color-default">&nbsp;</i>About *</label>
                                            <textarea type="text" name="about" placeholder="About Adoptor" class="form-control" style="height:30ch" required>{{Auth::user()->adoptor->about}}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-facebook color-default">&nbsp;</i>Facebook (Optional)</label>
                                            <input type="text" name="facebook" placeholder="https://facebook.com/example" class="form-control" value="{{Auth::user()->adoptor->facebook}}">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-twitter color-default">&nbsp;</i>Twitter (Optional)</label>
                                            <input type="text" name="website" placeholder="https://twitter.com/example" class="form-control" value="{{Auth::user()->adoptor->twitter}}">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-instagram color-default">&nbsp;</i>Instagram (Optional)</label>
                                            <input type="text" name="instagram" placeholder="https://instagram.com/example" class="form-control" value="{{Auth::user()->adoptor->instagram}}">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-internet-explorer color-default">&nbsp;</i>Website (Optional)</label>
                                            <input type="text" name="twitter" placeholder="https://" class="form-control" value="{{Auth::user()->adoptor->website}}">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="form-group">
                                            <label><i class="fa fa-google-plus color-default">&nbsp;</i>Email *</label>
                                            <input type="email" name="email" placeholder="example@dost.com" class="form-control" value="{{Auth::user()->adoptor->email}}" required>
                                        </div>
                                    </div>
                                    {{-- <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <div class="card">
                                                <div class="card-header"><h5><i class="fa fa-map">&nbsp;</i>Map</h5></div>
                                                <div class="card-body">
                                                        {!!Auth::user()->adoptor->map!!}
                                                </div>
                                            </div>
                                                
                                        </div>
                                    </div>
                                     --}}
                               </div>
                            <div class="card-footer bg-transparent">
                            <button type="submit" class="btn btn-rounded mb-3 text-white float-right" style="background-color:#bf3e11"><i class="fa fa-database">&nbsp;</i>Save to Database</button>
                            <a href="{{ route('user.dashboard') }}"><button type="button" class="btn btn-rounded btn-danger mb-3 text-white float-right"><i class="fa fa-chevron-circle-left">&nbsp;</i>Cancel</button></a>    
                        </div>
                    </form>
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
           $('#region').select2({
               
           });
           $('#scale').select2({
               
            });
           $('#equipments').select2({
               placeholder : "Select Equipment's"
           });
           $('#technology').select2({
               placeholder : "Select Technologies"
           });
           $('#rawMats').select2({
               placeholder : "Select Raw Materials"
           });
       });
   </script>
   @endpush

