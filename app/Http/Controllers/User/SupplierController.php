<?php

namespace App\Http\Controllers\User;

use App\Supplier;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;

class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $suppliers = Supplier::where('adoptor_id',Auth::user()->adoptor_id)->get();
        return view('user.supplier.index',compact('suppliers'));
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
            'name' => 'required',
            'contactNo' => 'required',
            'address' => 'required'
        ]);

        $supplier = new supplier();
        $supplier->adoptor_id = Auth::user()->adoptor->id;
        $supplier->name = $request->name;
        $supplier->address = $request->address;
        $supplier->contactNumber = $request->contactNo;
        $supplier->save();
        Toastr::success('New Supplier Successfully Added','success');
            return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function show(Supplier $supplier)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function edit(Supplier $supplier)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Supplier $supplier)
    {
        if($supplier->adoptor_id != Auth::user()->adoptor->id){
            Toastr::error('You are not allowed to do this action','error');
            return redirect()->back();
        }
        $this->validate($request, [
            'name' => 'required',
            'contactNo' => 'required',
            'address' => 'required'
        ]);

        $supplier->adoptor_id = Auth::user()->adoptor->id;
        $supplier->name = $request->name;
        $supplier->address = $request->address;
        $supplier->contactNumber = $request->contactNo;
        $supplier->save();
        Toastr::success('Supplier Successfully Updated','success');
            return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function destroy(Supplier $supplier)
    {
        if($supplier->adoptor_id != Auth::user()->adoptor->id){
            Toastr::error('You are not allowed to do this action','error');
            return redirect()->back();
        }
        $supplier->delete();
        Toastr::success('Supplier Successfully Deleted','success');
            return redirect()->back();
    }
}
