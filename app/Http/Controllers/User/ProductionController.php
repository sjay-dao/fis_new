<?php

namespace App\Http\Controllers\User;

use App\Production;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\AdoptorProduct;
use App\Client;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\DB;
use App\RawMaterial;
use App\RawMaterialUsed;
use PDF;

class ProductionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = AdoptorProduct::where('adoptor_id',Auth::user()->adoptor->id)->get();
        $productions = Production::join('adoptor_products','adoptor_products.id','=','productions.adoptor_product_id')
                                ->where('adoptor_products.adoptor_id',Auth::user()->adoptor->id)
                                ->select('productions.id as id','adoptor_products.name as name','productions.packs','productions.dateProduced','productions.adoptor_product_id')
                                ->orderBy('packs','DESC')
                                ->get();
        return view('user.production.index',compact('productions','products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        $products = AdoptorProduct::where('adoptor_id',Auth::user()->adoptor->id)->get();
        return view('user.production.create',compact('products'));
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
            'product' => 'required',
            'packs' => 'required',
            'date' => 'required'
        ]);
        //checking if the product is belong to the adoptor
        $check = AdoptorProduct::where('id', $request->product)
                ->where('adoptor_id',Auth::user()->adoptor->id)
                ->count();
        if($check <= 0){
            Toastr::error('Something Wrong, Please Contact the Administrator','Error');
            return redirect()->back();
        }
        //insert the data to the production table
        $production = new Production();
        $production->adoptor_product_id = $request->product;
        $production->packs = $request->packs;
        $production->dateProduced = $request->date;
            $production->save();
            Toastr::success('Successfully added','Success');
            return redirect()->route('user.production.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Production  $production
     * @return \Illuminate\Http\Response
     */
    public function show(Production $production)
    {
        $auth = Auth::user()->adoptor->id;
        $check = $production->AdoptorProduct->adoptor->id;
        if($check != $auth){
            Toastr::error('Something wrong Please Contact your admin','Message');
            return redirect()->back();
        }
        $rawMats = RawMaterial::where('adoptor_id',$auth)
                ->where('quantity', '!=','0')
                ->get();
        $rawMatUseds = RawMaterialUsed::where('production_id',$production->id)->get();
        return view('user.production.show',compact('production','rawMats','rawMatUseds'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Production  $production
     * @return \Illuminate\Http\Response
     */
    public function edit(Production $production)
    {
        return $production;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Production  $production
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Production $production)
    {
        $this->validate($request, [
            'product' => 'required',
            'packs' => 'required',
            'date' => 'required'
        ]);
        //checking if the product is belong to the adoptor
        $check = AdoptorProduct::where('id', $request->product)
                ->where('adoptor_id',Auth::user()->adoptor->id)
                ->count();
        if($check <= 0){
            Toastr::error('Something Wrong, Please Contact the Administrator','Error');
            return redirect()->back();
        }
        $production->adoptor_product_id = $request->product;
        $production->packs = $request->packs;
        $production->dateProduced = $request->date;
            $production->save();
            Toastr::success('Successfully Updated','Success');
            return redirect()->route('user.production.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Production  $production
     * @return \Illuminate\Http\Response
     */
    public function destroy(Production $production)
    {
        $production->delete();
        Toastr::success('Successfully Deleted','Message');
            return redirect()->back();
;    }
    public function report(Request $request)
    {
        
            $data =Production::join('adoptor_products','adoptor_products.id','=','productions.adoptor_product_id')
            ->where('adoptor_products.adoptor_id',Auth::user()->adoptor->id)
            ->select('productions.id as id','adoptor_products.name as name','productions.packs','productions.dateProduced')
            ->get();
        
        $pdf = PDF::loadView('user.production.report',compact('data'));
        return $pdf->stream('eTransmotion-report.pdf');
    }

    public function search(Request $request){
        $this->validate($request, [
            'dateFrom' => 'required',
            'dateTo' => 'required'
        ]);
        $dateFrom = $request->dateFrom;
        $dateTo = $request->dateTo;
        $products = AdoptorProduct::where('adoptor_id',Auth::user()->adoptor->id)->get();
        $productionSearch = Production::join('adoptor_products','adoptor_products.id','=','productions.adoptor_product_id')
        ->where('adoptor_products.adoptor_id',Auth::user()->adoptor->id)
        ->whereBetween('dateProduced',[$dateFrom, $dateTo])
        ->select('productions.id as id','adoptor_products.name as name','productions.packs','productions.dateProduced','productions.adoptor_product_id')
        ->orderBy('packs','DESC')
        ->get();
        return view('user.production.index',compact('productionSearch','products'));
    }
}
