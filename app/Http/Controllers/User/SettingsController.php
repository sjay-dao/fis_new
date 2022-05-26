<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Hash;
use App\Adoptor;
use App\Product;
use App\RawMaterial;
use App\Equipment;
use App\Region;

class SettingsController extends Controller
{
    public function index()
    {
    	return view('user.settings');
    }

    public function profileUpdate(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'username' => 'required',
            'email' => 'required|email',
            'image' => 'mimes:jpeg,bmp,png,jpg'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        $user = User::findOrFail(Auth::id());
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'='.$currentDate.'='.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('users'))
            {
                Storage::disk('public')->makeDirectory('users');
            }
            // delete old image
            if(Storage::disk('public')->exists('users/'.$user->image))
            {
                Storage::disk('public')->delete('users/'.$user->image);
                }   
           // resize_image for category and upload
           $profileImage = Image::make($image)->resize(180,180)->save(90);
           Storage::disk('public')->put('users/'.$imageName,$profileImage);
        } else {
            $imageName = $user->image;
        }
        $user->name = $request->name;
        $user->username = $request->username;
        $user->email = $request->email;
        $user->image = $imageName;
        $user->save();
        Toastr::success('Profile Successfully Updated ','Success');
        return redirect()->back();
    }
    public function password()
    {
        return view('user.changePassword');
    }
    public function changePassword(Request $request)
    {
        $this->validate($request,[
            'old_password' => 'required',
            'password' => 'required|confirmed|min:6' 
        ]);
        $hashedPassword = Auth::user()->password;
        if(Hash::check($request->old_password,$hashedPassword))
        {
            if(!Hash::check($request->password,$hashedPassword))
            {
                    $user = User::find(Auth::id());
                    $user->password = Hash::make($request->password);
                    $user->save();
                    Toastr::success('User Password Successfully Updated ','Success');
                    Auth::logout();
                    return redirect()->back();
                    
            }
        }else {
            Toastr::error('Your Entered a Wrong Password','error');
            return redirect()->back();
        }


    }
    public function adoptor()
    {
        $technologies = Product::all();
        $rawMats = RawMaterial::all();
        $equipment = Equipment::all();
        $regions = Region::all();
        return view('user.adoptor',compact('technologies','rawMats','equipment','regions'));
    }
    public function adoptorUpdate(Request $request, $id){
     $adoptor = Adoptor::find($id);
        if(Auth::user()->adoptor->id != $id){
            Toastr::success('your information was Successfully Updated ','Success');
            return redirect()->route('user.adoptor-settings');
        }
        $this->validate($request,[
            'name' => 'required',
            'address' => 'required',
            'region' => 'required',
            'image' => 'image|mimes:jpeg,bmp,png,jpg',
            'mobile' => 'required|max:12',
            'about' => 'required|min:15',
            'email' => 'required|email'
            
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        $status = true;
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('adoptors'))
            {
                Storage::disk('public')->makeDirectory('adoptors');
            }
            $adop = Image::make($image)->resize(800,600)->save(90);
            Storage::disk('public')->put('adoptors/'.$imageName,$adop);
            if(!Storage::disk('public')->exists('adoptors/background'))
            {
                Storage::disk('public')->makeDirectory('adoptors/background');
            }
            // delete old image
            if(Storage::disk('public')->exists('adoptors/'.$adoptor->image))
            {
                Storage::disk('public')->delete('adoptors/'.$adoptor->image);
            }
            if(Storage::disk('public')->exists('adoptors/background/'.$adoptor->image))
            {
                Storage::disk('public')->delete('adoptors/background/'.$adoptor->image);
            }
            $adop = Image::make($image)->resize(1600,479)->save(90);
            Storage::disk('public')->put('adoptors/background/'.$imageName,$adop);
        }else {
            $imageName = $adoptor->image;
        }
        $adoptor->name = $request->name;
        $adoptor->slug = $slug;
        $adoptor->address = $request->address;
        $adoptor->region_id = $request->region;
        $adoptor->image = $imageName;
        $adoptor->mobile = $request->mobile;
        $adoptor->telephone = $request->telephone;
        $adoptor->fax = $request->fax;
        $adoptor->about = $request->about;
        $adoptor->facebook = $request->facebook;
        $adoptor->twitter = $request->twitter;
        $adoptor->instagram = $request->instagram;
        $adoptor->website = $request->website;
        $adoptor->email = $request->email;
        $adoptor->save();
        Toastr::success('your information was Successfully Updated ','Success');
            return redirect()->route('user.adoptor-settings');
    }
}
