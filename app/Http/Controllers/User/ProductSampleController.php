<?php

namespace App\Http\Controllers\User;

use App\AdoptorProduct;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Production;
use App\ProductSample;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Auth;

class ProductSampleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $auth = Auth::user()->adoptor->id;
        $productSamples = ProductSample::where('adoptor_id',$auth)->get();
        return view('user.productSample.index',compact('productSamples'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products = AdoptorProduct::where('adoptor_id',Auth::user()->adoptor->id)->get();
        $productions = Production::join('adoptor_products','adoptor_products.id','=','productions.adoptor_product_id')
            ->where('adoptor_products.adoptor_id',Auth::user()->adoptor->id)
            ->select('productions.id as id','adoptor_products.name as name','productions.packs','productions.dateProduced','productions.adoptor_product_id')
            ->where('productions.packs','!=','0')
            ->orderBy('packs','DESC')
            ->get();
         return view('user.productSample.create',compact('productions','products'));
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
            'production' => 'required',
            'packs' => 'required'
        ]);
         //get the product information
          $production = Production::find($request->production);
           //check if the request quantity less than or equal to the packs avialable in the production
        if($request->packs > $production->packs){
            Toastr::error('Make sure that the request quantity is equal or less than the Available quantity','Not Enough');
            return redirect()->back();
        }
        //check if the request if valid
        if($production->AdoptorProduct->adoptor->id != $auth)
        {
            Toastr::error('Something Wrong Please Contact the Admin','message');
            return redirect()->back();
        }
        $prodSub = $production->packs - $request->packs;
        $productSample = new ProductSample();
        $productSample->adoptor_id = $auth;
        $productSample->production_id = $request->production;
        $productSample->packs = $request->packs;
        $productSample->note = $request->note;
        $production->packs = $prodSub;
        $production->save();
        $productSample->save();
        Toastr::success('productSample Successfully Deducted ','Success');
        return redirect()->route('user.productSample.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $auth = Auth::user()->adoptor->id;
        $this->validate($request, [
            'packs' => 'required'
        ]);
        
         $production = Production::find($productSample->production_id);
//      Add the current production and productSample packs
        $addedProd = $productSample->packs + $production->packs;
//      check if the request quantity less than or equal to the packs avialable in the production
         if($request->packs > $addedProd){
            Toastr::error('Make sure that the request quantity is equal or less than the Available quantity','Not Enough');
            return redirect()->back();
        }
//      check if the request if valid
        if($production->AdoptorProduct->adoptor->id != $auth)
        {
            Toastr::error('Something Wrong Please Contact the Admin','message');
            return redirect()->back();
        }
        $prodSub = $addedProd - $request->packs;
        $productSample->packs = $request->packs;
        $productSample->note = $request->note;
        $production->packs = $prodSub;
        $productSample->save();
        $production->save();
        Toastr::success('productSample Successfully Updated ','Success');
        return redirect()->route('user.productSample.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $production = Production::find($productSample->production_id);
        $prodSum = $production->packs + $productSample->packs;
        $production->packs = $prodSum;
        $production->save();
        $productSample->delete();
        Toastr::success('Reject Successfully Deleted ','Success');
        return redirect()->route('user.productSample.index');
    }
}
