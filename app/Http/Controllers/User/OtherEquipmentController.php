<?php

namespace App\Http\Controllers\User;

use App\OtherEquipment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Notifications\NewEquipment;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;

class OtherEquipmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('user.otherEquipment.create');
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
            'sourceOfFund' => 'required',
            'quantity' => 'required',
            'status' => 'required',
            'image' => 'mimes:jpeg,bmp,png,jpg'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        if (OtherEquipment::where('name', '=', Input::get('name'))->exists()) {
            Toastr::warning('Equipment already existed ','warning');
            return redirect()->route('user.equipment.index');
         }
         
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('otherEquipment'))
            {
                Storage::disk('public')->makeDirectory('otherEquipment');
            }
            $equip = Image::make($image)->resize(500,477)->save(90);
            Storage::disk('public')->put('otherEquipment/'.$imageName,$equip);
        }else {
            $imageName = "default.png";
        }

        $otherEquipment = new OtherEquipment();
        $otherEquipment->adoptor_id = Auth::user()->adoptor->id;
        $otherEquipment->name = $request->name;
        $otherEquipment->slug = $slug;
        $otherEquipment->sourceOfFunds = $request->sourceOfFund;
        $otherEquipment->quantity = $request->quantity;
        $otherEquipment->image = $imageName;
        $otherEquipment->status = $request->status;
        $otherEquipment->description = $request->description;
        $otherEquipment->note = $request->note;
        $otherEquipment->save();
        $users = User::where('role_id','1')->get();
        Notification::send($users,  new NewEquipment($otherEquipment));
        Toastr::success('Equipment Successfully save ','Success');
            return redirect()->route('user.equipment.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OtherEquipment  $otherEquipment
     * @return \Illuminate\Http\Response
     */
    public function show(OtherEquipment $otherEquipment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\OtherEquipment  $otherEquipment
     * @return \Illuminate\Http\Response
     */
    public function edit(OtherEquipment $otherEquipment)
    {
        return view('user.otherEquipment.edit', compact('otherEquipment'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OtherEquipment  $otherEquipment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OtherEquipment $otherEquipment)
    {
        $this->validate($request, [
            'name' => 'required',
            'sourceOfFund' => 'required',
            'quantity' => 'required',
            'status' => 'required',
            'image' => 'mimes:jpeg,bmp,png,jpg'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        $check =  OtherEquipment::where('slug', $otherEquipment->slug)->count();
        if ($check > 1) {
            Toastr::warning('Equipment already existed ','warning');
            return redirect()->route('user.equipment.index');
         }
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('otherEquipment'))
            {
                Storage::disk('public')->makeDirectory('otherEquipment');
            }
             // delete old image
             if(Storage::disk('public')->exists('otherEquipment/'.$otherEquipment->image))
             {
                 if($otherEquipment->image != 'default.png'){
                    Storage::disk('public')->delete('otherEquipment/'.$otherEquipment->image);
                 }
             }
            $equip = Image::make($image)->resize(500,477)->save(90);
            Storage::disk('public')->put('otherEquipment/'.$imageName,$equip);
        }else {
            $imageName = $otherEquipment->image;
        }
        $otherEquipment->adoptor_id = Auth::user()->adoptor->id;
        $otherEquipment->name = $request->name;
        $otherEquipment->slug = $slug;
        $otherEquipment->sourceOfFunds = $request->sourceOfFund;
        $otherEquipment->quantity = $request->quantity;
        $otherEquipment->image = $imageName;
        $otherEquipment->status = $request->status;
        $otherEquipment->description = $request->description;
        $otherEquipment->note = $request->note;
        $otherEquipment->save();
        Toastr::success('Equipment Successfully save ','Success');
            return redirect()->route('user.equipment.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OtherEquipment  $otherEquipment
     * @return \Illuminate\Http\Response
     */
    public function destroy(OtherEquipment $otherEquipment)
    {
        if($otherEquipment->adoptor_id === Auth::user()->adoptor->id){
            $otherEquipment->delete();
            // delete old image
            if(Storage::disk('public')->exists('otherEquipment/'.$otherEquipment->image))
            {
                if($otherEquipment->image != 'default.png'){
                   Storage::disk('public')->delete('otherEquipment/'.$otherEquipment->image);
                }else {
                    //do nothing
                }
            }
            Toastr::success('Equipment was Successfully Deleted ','Success');
            return redirect()->route('user.equipment.index');
        }else {
            Toastr::danger('Oops!, Something wrong ','Warning');
            return redirect()->route('user.equipment.index');
        }
    }
}
