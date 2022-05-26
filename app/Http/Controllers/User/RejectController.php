<?php

namespace App\Http\Controllers\User;

use App\AdoptorProduct;
use App\Reject;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Production;
use Auth;
use Brian2694\Toastr\Facades\Toastr;

class RejectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $auth = Auth::user()->adoptor->id;
        $rejects = Reject::where('adoptor_id',$auth)->get();
        return view('user.reject.index',compact('rejects'));
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
         return view('user.reject.create',compact('productions','products'));
        
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
        $reject = new Reject();
        $reject->adoptor_id = $auth;
        $reject->production_id = $request->production;
        $reject->packs = $request->packs;
        $reject->note = $request->note;
        $production->packs = $prodSub;
        $production->save();
        $reject->save();
        Toastr::success('Reject Successfully Deducted ','Success');
        return redirect()->route('user.reject.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Reject  $reject
     * @return \Illuminate\Http\Response
     */
    public function show(Reject $reject)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Reject  $reject
     * @return \Illuminate\Http\Response
     */
    public function edit(Reject $reject)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Reject  $reject
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Reject $reject)
    {
        $auth = Auth::user()->adoptor->id;
        $this->validate($request, [
            'packs' => 'required'
        ]);
        
         $production = Production::find($reject->production_id);
//      Add the current production and reject packs
        $addedProd = $reject->packs + $production->packs;
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
        $reject->packs = $request->packs;
        $reject->note = $request->note;
        $production->packs = $prodSub;
        $reject->save();
        $production->save();
        Toastr::success('Reject Successfully Updated ','Success');
        return redirect()->route('user.reject.index');
        

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Reject  $reject
     * @return \Illuminate\Http\Response
     */
    public function destroy(Reject $reject)
    {
        $production = Production::find($reject->production_id);
        $prodSum = $production->packs + $reject->packs;
        $production->packs = $prodSum;
        $production->save();
        $reject->delete();
        Toastr::success('Reject Successfully Deleted ','Success');
        return redirect()->route('user.reject.index');
    }
}
