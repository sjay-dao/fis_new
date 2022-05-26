<?php

namespace App\Http\Controllers\User;

use App\Client;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $clients = Client::where('adoptor_id',Auth::user()->adoptor_id)->get();
        return view('user.client.index',compact('clients'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('user.client.create');
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

        $client = new Client();
        $client->adoptor_id = Auth::user()->adoptor->id;
        $client->name = $request->name;
        $client->address = $request->address;
        $client->contactNumber = $request->contactNo;
        $client->save();
        Toastr::success('New Client Successfully Added','success');
            return redirect()->back();
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function show(Client $client)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function edit(Client $client)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Client $client)
    {
        if($client->adoptor_id != Auth::user()->adoptor->id){
            Toastr::error('You are not allowed to do this action','error');
            return redirect()->back();
        }
        $this->validate($request, [
            'name' => 'required',
            'contactNo' => 'required',
            'address' => 'required'
        ]);

        $client->adoptor_id = Auth::user()->adoptor->id;
        $client->name = $request->name;
        $client->address = $request->address;
        $client->contactNumber = $request->contactNo;
        $client->save();
        Toastr::success('Client Successfully Updated','success');
            return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function destroy(Client $client)
    {
        if($client->adoptor_id != Auth::user()->adoptor->id){
            Toastr::error('You are not allowed to do this action','error');
            return redirect()->back();
        }
        $client->delete();
        Toastr::success('Client Successfully Deleted','success');
            return redirect()->back();
    }
}
