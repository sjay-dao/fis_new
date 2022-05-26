<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\RawMaterial;
use App\RawMaterialList;
use App\Supplier;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\DB;
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
        $rawMats = RawMaterial::where('adoptor_id',Auth::user()->adoptor_id)->get();
        return view('user.rawMaterial.index',compact('rawMats'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $rawMatsList = RawMaterialList::where('adoptor_id',Auth::user()->adoptor_id)->get();
        return view('user.rawMaterial.create', compact('rawMatsList'));
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
            'extension' => 'required',
            'quantity' => 'required',
            'expirationDate' => 'required'
        
        ]);
        $check = RawMaterial::where('name',$request->name)->where('adoptor_id',Auth::user()->adoptor->id)->count();
        if($check >= 1){
            Toastr::warning('Raw materials is already in the database', 'warning');
            return redirect()->back();
        }
        if($request->note == ''){
            $note = 'N/A';
        }else {
            $note = $request->note;
        }
        $rawMat = new RawMaterial();
        $rawMat->adoptor_id = Auth::user()->adoptor_id;
        $rawMat->name = $request->name;
        $rawMat->extension = $request->extension;
        $rawMat->note = $note;
        $rawMat->quantity = $request->quantity;
        $rawMat->expirationDate = $request->expirationDate;
        $rawMat->save();
        Toastr::success('Raw materials was Successfully Save to Database', 'Success');
        return redirect()->route('user.rawMaterial.index');

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

        return view('user.rawMaterial.show',compact('rawMat'));

    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $rawMatsList = RawMaterialList::where('adoptor_id',Auth::user()->adoptor_id)->get();
        $rawMat = RawMaterial::find($id);
        return view('user.rawMaterial.edit',compact('rawMat','rawMatsList'));
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
            'extension' => 'required',
            'quantity' => 'required',
            'expirationDate' => 'required'
        ]);
        $rawMat->name = $request->name;
        $rawMat->extension = $request->extension;
        $rawMat->note = $request->description;
        $rawMat->quantity = $request->quantity;
        $rawMat->expirationDate = $request->expirationDate;
        $rawMat->save();
        Toastr::success('Raw materials Successfully Updated', 'Success');
        return redirect()->route('user.rawMaterial.index');
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
        $data = RawMaterial::where('adoptor_id',Auth::user()->adoptor_id)->get();
        $pdf = PDF::loadView('user.rawMaterial.report',compact('data'));
return $pdf->stream('invoice.pdf');
    }

    public function list()
    {
        $listRawmats = RawMaterialList::where('adoptor_id',Auth::user()->adoptor_id)->get();
        $suppliers = Supplier::where('adoptor_id',Auth::user()->adoptor_id)->get();
        return view('user.rawMaterial.list',compact('suppliers','listRawmats'));
    }
    public function insert(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'supplier' => 'required'
        ]);
        $check =  DB::table('raw_material_lists')
                ->where('adoptor_id','=',Auth::user()->adoptor_id,'name', '=' ,$request->name,'supplier_id','=',$request->supplier)->count();
        if ($check > 1) {
            Toastr::warning('already existed ','warning');
            return redirect()->route('user.rawMaterial.list');
         }    
        $rawMatsList = new RawMaterialList();
        $rawMatsList->adoptor_id = Auth::user()->adoptor_id;
        $rawMatsList->name = $request->name;
        $rawMatsList->supplier_id = $request->supplier;
        $rawMatsList->save();
        Toastr::success('Successfully saved ', 'Success');
        return redirect()->route('user.rawMaterial.list');
    }
    public function updateRawMat(Request $request,$id)
    {
        $rawMatsList = RawMaterialList::find($id);
        $this->validate($request, [
            'name' => 'required',
            'supplier' => 'required'
        ]);
        
        $rawMatsList->adoptor_id = Auth::user()->adoptor_id;
        $rawMatsList->name = $request->name;
        $rawMatsList->supplier_id = $request->supplier;
        $rawMatsList->save();
        Toastr::success('Successfully saved ', 'Success');
        return redirect()->route('user.rawMaterial.list');
    }
}
