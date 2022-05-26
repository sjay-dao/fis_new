<?php

namespace App\Http\Controllers\Admin;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Adoptor;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Hash;
use Brian2694\Toastr\Facades\Toastr;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = '2';
        $users = User::all();
        return view('admin.user.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $adoptors = Adoptor::all();
        return view('admin.user.create',compact('adoptors'));
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
            'username' => 'required',
            'email' => 'required|email',
            'password' => 'required|confirmed|min:6',
            'image' => 'required|mimes:jpeg,bmp,png,jpg',
            'adoptor' => 'required'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        $password = Hash::make($request->password);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('users'))
            {
                Storage::disk('public')->makeDirectory('users');
            }
            $profileImage = Image::make($image)->resize(180,180)->save(90);
           Storage::disk('public')->put('users/'.$imageName,$profileImage);
        }
        $user = new User();
        $user->name = $request->name;
        $user->username = $request->username;
        $user->email = $request->email;
        $user->password = $password;
        $user->adoptor_id = $request->adoptor;
        $user->image = $imageName;
        $user->status = '1';
        $user->save();
        Toastr::success('New User Successfully save ','Success');
        return redirect()->route('admin.user.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return view('admin.user.show',compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $adoptors = Adoptor::all();
        return view('admin.user.edit',compact('user','adoptors'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $this->validate($request, [
            'name' => 'required',
            'username' => 'required',
            'email' => 'required|email',
            'password' => 'required|confirmed|min:6',
            'image' => 'mimes:jpeg,bmp,png,jpg',
            'adoptor' => 'required'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        $password = Hash::make($request->password);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('users'))
            {
                Storage::disk('public')->makeDirectory('users');
            }
            $profileImage = Image::make($image)->resize(180,180)->save(90);
           Storage::disk('public')->put('users/'.$imageName,$profileImage);
        }else {
            $imageName = $user->image;
        }
        $user->name = $request->name;
        $user->username = $request->username;
        $user->email = $request->email;
        $user->password = $password;
        $user->adoptor_id = $request->adoptor;
        $user->image = $imageName;
        $user->status = '1';
        $user->save();
        Toastr::success(' User Successfully Updated ','Success');
        return redirect()->route('admin.user.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        if(Storage::disk('public')->exists('users/'.$user->image))
        {
            Storage::disk('public')->delete('users/'.$user->image);
        }
        $user->delete();
        Toastr::success('User Successfully Deleted ','Success');
        return redirect()->route('admin.user.index');
    }
}
