<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Equipment;
use Barryvdh\DomPDF\PDF as DomPDFPDF;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Storage;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;

class EquipmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $equipments = Equipment::all();
        return view('admin.equipment.index',compact('equipments'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.equipment.create');
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
            'description' => 'required',
            'image' => 'required|mimes:jpeg,bmp,png,jpg'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('equipment'))
            {
                Storage::disk('public')->makeDirectory('equipment');
            }
            $equip = Image::make($image)->resize(500,477)->save(90);
            Storage::disk('public')->put('equipment/'.$imageName,$equip);
        }else {
            $imageName = "default.png";
        }
        $equipment = new Equipment();
        $equipment->name = $request->name;
        $equipment->slug = $slug;
        $equipment->image = $imageName;
        $equipment->description = $request->description;
        $equipment->save();
        Toastr::success('Equipment Successfully save ','Success');
            return redirect()->route('admin.equipment.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $equipment = Equipment::find($id);

        return view('admin.equipment.show',compact('equipment'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $equipment = Equipment::find($id);
        return view('admin.equipment.edit',compact('equipment'));
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
            'description' => 'required',
            'image' => 'mimes:jpeg,bmp,png,jpg'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        $equipment = Equipment::find($id);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('equipment'))
            {
                Storage::disk('public')->makeDirectory('equipment');
            }
             // delete old image
             if(Storage::disk('public')->exists('equipment/'.$equipment->image))
             {
                 Storage::disk('public')->delete('equipment/'.$equipment->image);
             }
            $equip = Image::make($image)->resize(500,477)->save(90);
            Storage::disk('public')->put('equipment/'.$imageName,$equip);
        }else {
            $imageName = $equipment->image;
        }
        $equipment->name = $request->name;
        $equipment->slug = $slug; 
        $equipment->description = $request->description;
        $equipment->image = $imageName;
        $equipment->save();
        Toastr::success('Equipment Successfully Updated', 'Success');
        return redirect()->route('admin.equipment.index');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $equipment = Equipment::find($id);
        if(Storage::disk('public')->exists('equipment/'.$equipment->image))
             {
                 Storage::disk('public')->delete('equipment/'.$equipment->image);
             }
        $equipment->delete();
        Toastr::success('Equipment Successfully Deleted', 'Success');
        return redirect()->route('admin.equipment.index');
    }

    public function report()
    {
        $data = Equipment::all();
        $pdf = DomPDFPDF::loadView('admin.equipment.report',compact('data'));
return $pdf->stream('eTransmotion-report.pdf');
    }
}
