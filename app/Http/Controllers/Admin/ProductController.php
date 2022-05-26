<?php

namespace App\Http\Controllers\Admin;
use App\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\RawMaterial;
use App\Equipment;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;
use PDF;
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all();
        return view('admin.product.index',compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $rawMaterials = RawMaterial::all();
        $equipments = Equipment::all();
        return view('admin.product.create',compact('rawMaterials','equipments'));
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
            'image' => 'required|mimes:jpeg,bmp,png,jpg',
            'description' => 'required',
            'procedure' => 'required'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('products'))
            {
                Storage::disk('public')->makeDirectory('products');
            }
            $prod = Image::make($image)->resize(500,477)->save(90);
            Storage::disk('public')->put('products/'.$imageName,$prod);
        }else {
            $imageName = "default.png";
        }
        $product = new Product();
        $product->name = $request->name;
        $product->slug = $slug;
        $product->image = $imageName;
        $product->description = $request->description;
        $product->procedure = $request->procedure;
        $product->save();
        
        Toastr::success('Product Successfully save ','Success');
            return redirect()->route('admin.product.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::find($id);

        return view('admin.product.show',compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::find($id);
        return view('admin.product.edit',compact('product'));

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
        $this->validate($request,[
            'name' => 'required',
            'image' => 'mimes:jpeg,bmp,png,jpg',
            'description' => 'required',
            'procedure' => 'required'
        ]);
        $product = Product::find($id);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('products'))
            {
                Storage::disk('public')->makeDirectory('products');
            }
             // delete old image
             if(Storage::disk('public')->exists('products/'.$product->image))
             {
                 Storage::disk('public')->delete('products/'.$product->image);
             }
            $prod = Image::make($image)->resize(500,477)->save(90);
            Storage::disk('public')->put('products/'.$imageName,$prod);
        }else {
            $imageName = $product->image;
        }
        $product->name = $request->name;
        $product->slug = $slug;
        $product->image = $imageName;
        $product->description = $request->description;
        $product->procedure = $request->procedure;
        $product->save();
        Toastr::success('Product Successfully Updated ','Success');
        return redirect()->route('admin.product.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        if(Storage::disk('public')->exists('products/'.$product->image))
        {
            Storage::disk('public')->delete('products/'.$product->image);
        }
        $product->delete();
        Toastr::success('Product Successfully Deleted ','Success');
            return redirect()->route('admin.product.index');
    }
    public function report()
    {
        $data = Product::all();
        $pdf = PDF::loadView('admin.product.report',compact('data'));
return $pdf->stream('invoice.pdf');
    }
}
