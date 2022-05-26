<?php

namespace App\Http\Controllers\User;

use App\ProductionRawMaterial;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;
use App\Production;
use App\AdoptorRawMaterial;
class ProductionRawMaterialController extends Controller
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
        
        $this->validate($request, [
            'rawmat_id' => 'required',
            'qty' => 'required',
            'extension' => 'required',
            'production' => 'required'
        ]); 
        $data = DB::table('adoptor_raw_materials')
        ->join('raw_materials','raw_materials.id','=','adoptor_raw_materials.raw_material_id')
        ->where('adoptor_raw_materials.adoptor_id',Auth::user()->adoptor->id)
        ->where('adoptor_raw_materials.quantity','!=' ,'0')
        ->where('adoptor_raw_materials.id','=',$request->rawmat_id)
        ->count();
        if($data <= 0){
            Toastr::error('Something Wrong Please Contact your admin','message');
            return redirect()->back();
        }
        $productions = Production::where('adoptor_id',Auth::user()->adoptor->id)
                                ->where('id',$request->production)
                                ->count();
        if($productions <= 0){
            Toastr::error('Something Wrong Please Contact your admin','message');
            return redirect()->back();
        }
        //get the adoptor raw material with quantity                       
        $prodRawmat = AdoptorRawMaterial::where('id',$request->rawmat_id)->get();
        //check if the adoptor raw material is existed
        if($prodRawmat->count() <= 0){
            Toastr::error('Something Wrong Please Contact your admin','message');
            return redirect()->back();
        }
        //get the adoptor raw material data
        foreach ($prodRawmat as $adRawMat) { 
        }
        //calculation of inventory
        //checking if the adoptor raw matrial had  enough quantity to subtract the request quantity
        if($adRawMat->quantity < $request->qty){
            Toastr::warning('not enough Rawmaterial','message');
            return redirect()->back();
        }
        //deduct the request quantity to the inventory
        $deductedRawmat = $adRawMat->quantity - $request->qty;
        
        //insert to database
        $productionRawMaterial = new ProductionRawMaterial();
        $productionRawMaterial->production_id = $request->production;
        $productionRawMaterial->adoptor_raw_material_id = $request->rawmat_id;
        $productionRawMaterial->Quantity = $request->qty;
        $productionRawMaterial->extension = $request->extension;
        $productionRawMaterial->save();
        //update the inventory
        $update_AdoptorRawMat = DB::table('adoptor_raw_materials')
                    ->where('id',$request->rawmat_id)
                    ->update(['quantity' => $deductedRawmat]);
        Toastr::success('Success','message');
            return redirect()->back();
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ProductionRawMaterial  $productionRawMaterial
     * @return \Illuminate\Http\Response
     */
    public function show(ProductionRawMaterial $productionRawMaterial)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ProductionRawMaterial  $productionRawMaterial
     * @return \Illuminate\Http\Response
     */
    public function edit(ProductionRawMaterial $productionRawMaterial)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ProductionRawMaterial  $productionRawMaterial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProductionRawMaterial $productionRawMaterial)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ProductionRawMaterial  $productionRawMaterial
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProductionRawMaterial $productionRawMaterial)
    {
        //
    }
}
