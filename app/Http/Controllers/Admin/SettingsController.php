<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Hash;


class SettingsController extends Controller
{
    public function index()
    {
    	return view('admin.settings');
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
        return view('admin.changePassword');
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
}
