<?php

namespace App\Http\Controllers\User;

use App\RawMaterialUsed;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\AdoptorRawMaterial;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Auth;
use App\Production;
use App\RawMaterial;
use DB;

class RawMaterialUsedController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
     $auth = Auth::user()->adoptor->id;
     $this->validate($request, [
         'rawmat' => 'required',
         'quantity' => 'required',
         'production' => 'required'
     ]);
     //check if the request quantity is equal or less than the raw material quantity
     $rawmat = RawMaterial::find($request->rawmat);
      if($request->quantity > $rawmat->quantity){
        Toastr::error('Request quantity should be equal or less than to the raw material quantity', 'Warning');
        return redirect()->back();
      }
      //check if the request is valid to the adoptor
      if($rawmat->adoptor_id != $auth){
        Toastr::error('Something wrong please contact the admin', 'Warning');
        return redirect()->back();
      }
      //check if the production is belong to the authenticated adoptor
        $production = Production::find($request->production);
        if($production->AdoptorProduct->adoptor->id != $auth){
            Toastr::error('Something wrong please contact the admin', 'Warning');
            return redirect()->back();
        }
        //insert to the raw material used
      $rawMaterialUsed = new RawMaterialUsed();
      $rawMaterialUsed->production_id = $request->production;
      $rawMaterialUsed->raw_material_id = $request->rawmat;
      $rawMaterialUsed->quantity = $request->quantity;
      $rawMaterialUsed->save();
      //update the quantity of the raw material
      $finalQty = $rawmat->quantity - $request->quantity;
      $rawmat->quantity = $finalQty;
      $rawmat->save();
      Toastr::success('Successfully added', 'Success');
      return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\RawMaterialUsed  $rawMaterialUsed
     * @return \Illuminate\Http\Response
     */
    public function show(RawMaterialUsed $rawMaterialUsed)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\RawMaterialUsed  $rawMaterialUsed
     * @return \Illuminate\Http\Response
     */
    public function edit(RawMaterialUsed $rawMaterialUsed)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\RawMaterialUsed  $rawMaterialUsed
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
         $editrawmat = RawMaterialUsed::find($id);
        //get the authenticated adoptor
        if($editrawmat->production_id != $request->production){
            Toastr::error('Something Wrong, Please Contact the Administrator','Error');
            return redirect()->back();
        }
        //get the raw material root
         $origrawmat = RawMaterial::find($editrawmat->raw_material_id);
        //add the edit rawmaterial quantity to the root rawmaterial quantity
         $totalrawmat = $editrawmat->quantity + $origrawmat->quantity;
        //subtract the request quantity to the totalrawmat
        $subrawmat = $totalrawmat - $request->quantity;
        //validate if the request is greater than totalrawmat
        if($request->quantity > $totalrawmat){
            Toastr::warning('Not Enough Raw Material','warning');
            return redirect()->back();
        }
        $editrawmat->quantity = $request->quantity;
        $editrawmat->save();
        $origrawmat->quantity = $subrawmat;
        $origrawmat->save();
        Toastr::success('Successfully Updated','Success');
            return redirect()->back();

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\RawMaterialUsed  $rawMaterialUsed
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $editrawmat = RawMaterialUsed::find($id);
        
        $origrawmat = RawMaterial::find($editrawmat->raw_material_id);
       
         $total = $editrawmat->quantity + $origrawmat->quantity;
         $origrawmat->quantity = $total;
         $origrawmat->save();
         $editrawmat->delete();
         Toastr::success('Successfully Deleted','Success');
            return redirect()->back();
         
    }

}
