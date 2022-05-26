<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\RawMaterial;
use Brian2694\Toastr\Facades\Toastr;
use PDF;

class RawMaterialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $rawMats = RawMaterial::all();
        return view('admin.rawMaterial.index',compact('rawMats'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.rawMaterial.create');
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
            'name' => 'required|unique:raw_materials',
            'description' => 'required'
        ]);
        $slug = str_slug($request->name);
        $rawMat = new RawMaterial();
        $rawMat->name = $request->name;
        $rawMat->slug = $slug;
        $rawMat->description = $request->description;
        $rawMat->save();
        Toastr::success('Raw materials was Successfully Save to Database', 'Success');
        return redirect()->route('admin.rawMaterial.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $rawMat = RawMaterial::find($id);
        
        return view('admin.rawMaterial.show',compact('rawMat'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $rawMat = RawMaterial::find($id);
        return view('admin.rawMaterial.edit',compact('rawMat'));
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
        $rawMat = RawMaterial::find($id);
        $this->validate($request, [
            'name' => 'required',
            'description' => 'required'
        ]);
        $slug = str_slug($request->name);
        $rawMat->name = $request->name;
        $rawMat->slug = $slug;
        $rawMat->description = $request->description;
        $rawMat->save();
        Toastr::success('Raw materials Successfully Updated', 'Success');
        return redirect()->route('admin.rawMaterial.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        RawMaterial::find($id)->delete();
        Toastr::success('Raw Material Successfully Deleted', 'Success');
        return redirect()->back();
    }

    public function report()
    {
        $data = RawMaterial::all();
        $pdf = PDF::loadView('admin.rawMaterial.report',compact('data'));
return $pdf->stream('invoice.pdf');
    }
}
