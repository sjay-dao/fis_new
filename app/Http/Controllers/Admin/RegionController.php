<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Region;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Notification;
use App\Notifications\NewProductPost;

class RegionController extends Controller
{
    public function index()
    {
        $regions = Region::all();
        return view('admin.region.index',compact('regions'));
    }
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required|unique:regions'
        ]);
        $slug = str_slug($request->name);
        $region = new Region();
        $region->name = $request->name;
        $region->slug = $slug;
        $region->save();
        // $users = User::where('role_id','2')->get();
        // Notification::send($users, new NewProductPost($region));
        Toastr::success('Region Successfully Save to Database', 'Success');
        return redirect()->back();
    }
    public function update(Request $request, $id)
    {
       $region = Region::find($id);
       $this->validate($request, [
        'name' => 'required|unique:regions',
       ]);
       $region->name = $request->name;
       $region->slug = str_slug($request->name);
       $region->save();
       Toastr::success('Region Successfully Updated', 'Success');
        return redirect()->back();
    }
    public function destroy($id)
    {
        Region::find($id)->delete();
        Toastr::success('Region Successfully Deleted', 'Success');
        return redirect()->back();
    }
}
