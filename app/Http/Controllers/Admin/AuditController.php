<?php

namespace App\Http\Controllers\Admin;

use App\Adoptor;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Audit;
use Brian2694\Toastr\Facades\Toastr;
use DB;


class AuditController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $audits = DB::table('audits')
    ->join('users', 'audits.user_id','users.id')
    ->join('adoptors', 'users.adoptor_id','adoptors.id')
    ->select('adoptors.name as adoptor','audits.event','audits.old_values as old','audits.new_values as new','audits.created_at','audits.id as id')
    ->orderby('audits.id','desc')
    ->get();
    $adoptors = Adoptor::all();
    
        return view('admin.audit.index', compact('audits','adoptors'));
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function search(Request $request){
        $this->validate($request, [
            'adoptor' => 'required'
        ]);
        if($request->adoptor == '--Please Select Adoptor--' || ''){
            Toastr::warning('Please Select Adoptor','warning');
            return redirect()->back();
        }
      $user = User::where('adoptor_id','=',$request->adoptor)->first();
      
       $audits = DB::table('audits')->where('user_id',$user->id)
        ->join('users', 'audits.user_id','users.id')
        ->join('adoptors', 'users.adoptor_id','adoptors.id')
        ->select('adoptors.name as adoptor','audits.event','audits.old_values as old','audits.new_values as new','audits.created_at','audits.id as id')
        ->orderby('audits.id','desc')
        ->get();
        if($audits->count() <= 0){
            $audits = 0;
        }
        $adoptors = Adoptor::all();
        return view('admin.audit.index',compact('audits','adoptors'));
    
    }
}
