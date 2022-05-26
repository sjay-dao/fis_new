<?php

namespace App\Http\Controllers\User;

use App\AdoptorProduct;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\Product;
use DB;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Carbon;
use Intervention\Image\Facades\Image;

class AdoptorProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = AdoptorProduct::where('adoptor_id',Auth::user()->adoptor->id)->get();
            return view('user.product.index',compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $prods = DB::table('adoptor_product')
                    ->join('products','adoptor_product.product_id','=','products.id')
                    ->where('adoptor_product.adoptor_id',Auth::user()->adoptor->id)
                    ->get();
    return view('user.product.create',compact('prods'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'image' => 'mimes:jpeg,bmp,png,jpg|required',
            'grams' => 'required'
       ]);
       $image = $request->file('image');
       $slug = str_slug($request->name);
       if(isset($image))
       {
           $currentDate = Carbon::now()->toDateString();
           $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
           if(!Storage::disk('public')->exists('adoptorProducts'))
           {
               Storage::disk('public')->makeDirectory('adoptorProducts');
           }
           $adop = Image::make($image)->resize(800,600)->save(90);
           Storage::disk('public')->put('adoptorProducts/'.$imageName,$adop);
       }else {
           $imageName = "default.png";
       }

        $MP = $request->OP * $request->MR;
        $FMP = round($MP);
        $adoptorProduct = new AdoptorProduct();
        $adoptorProduct->adoptor_id = Auth::user()->adoptor->id;
        $adoptorProduct->product_id = $request->technology;
        $adoptorProduct->name = $request->name;
        $adoptorProduct->image = $imageName;
        $adoptorProduct->description = $request->description;
        $adoptorProduct->grams = $request->grams;
        $adoptorProduct->originalPrice = $request->OP;
        $adoptorProduct->markUpRate = $request->MR;
        $adoptorProduct->markUpPrice = $FMP;
        $adoptorProduct->finalPrice = $request->FP;
        $adoptorProduct->save();
        Toastr::success('New Product Successfully Added','success');
            return redirect()->route('user.product.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AdoptorProduct  $adoptorProduct
     * @return \Illuminate\Http\Response
     */
    public function show(AdoptorProduct $adoptorProduct)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AdoptorProduct  $adoptorProduct
     * @return \Illuminate\Http\Response
     */
    public function edit(AdoptorProduct $adoptorProduct, $id)
    {
        
         $prod = AdoptorProduct::find($id);

         if($prod->adoptor_id != Auth::user()->adoptor_id){
            Toastr::error('Something wrong Please contact the admin','error');
            return redirect()->route('user.product.index');
         }
        $prods = DB::table('adoptor_product')
        ->join('products','adoptor_product.product_id','=','products.id')
        ->where('adoptor_product.adoptor_id',Auth::user()->adoptor->id)
        ->get();
        return view('user.product.edit',compact('prods','prod'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AdoptorProduct  $adoptorProduct
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $adoptorProduct = AdoptorProduct::find($id);
        $this->validate($request,[
            'name' => 'required',
            'image' => 'mimes:jpeg,bmp,png,jpg',
            'grams' => 'required'
       ]);
       $image = $request->file('image');
       $slug = str_slug($request->name);
       if(isset($image))
       {
           $currentDate = Carbon::now()->toDateString();
           $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
           if(!Storage::disk('public')->exists('adoptorProducts'))
           {
               Storage::disk('public')->makeDirectory('adoptorProducts');
           }
           if(Storage::disk('public')->exists('adoptorProducts/'.$adoptorProduct->image))
           {
               Storage::disk('public')->delete('adoptorProducts/'.$adoptorProduct->image);
           }
           $adop = Image::make($image)->resize(800,600)->save(90);
           Storage::disk('public')->put('adoptorProducts/'.$imageName,$adop);
       }else {
           $imageName = $adoptorProduct->image;
       }

        $MP = $request->OP * $request->MR;
        $FMP = round($MP);
        $adoptorProduct->adoptor_id = Auth::user()->adoptor->id;
        $adoptorProduct->product_id = $request->technology;
        $adoptorProduct->name = $request->name;
        $adoptorProduct->image = $imageName;
        $adoptorProduct->description = $request->description;
        $adoptorProduct->grams = $request->grams;
        $adoptorProduct->originalPrice = $request->OP;
        $adoptorProduct->markUpRate = $request->MR;
        $adoptorProduct->markUpPrice = $FMP;
        $adoptorProduct->finalPrice = $request->FP;
        $adoptorProduct->save();
        Toastr::success('New Product Successfully Updated','success');
            return redirect()->route('user.product.index');
      
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AdoptorProduct  $adoptorProduct
     * @return \Illuminate\Http\Response
     */
    public function destroy(AdoptorProduct $adoptorProduct, $id)
    {
        $auth = Auth::user()->adoptor_id;
        $check = AdoptorProduct::where('adoptor_id',$auth)
       ->where('id',$id)
       ->count();
        if($check !=  1){
        Toastr::error('Something wrong Please contact the admin','error');
        return redirect()->route('user.product.index');
        }
        $product = AdoptorProduct::find($id);
         $product->delete();
         if(Storage::disk('public')->exists('adoptorProducts/'.$product->image))
        {
            Storage::disk('public')->delete('adoptorProducts/'.$product->image);
        }
        Toastr::success('Product Successfully Deleted ','Success');
        return redirect()->route('user.product.index');
    }
}
