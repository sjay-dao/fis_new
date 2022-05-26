<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Notifications\TechnologyNotif;
use App\Record;
use App\User;
use Auth;
use DB;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Notification;

class TechnologyController extends Controller
{
   public function index()
   {
      $id = Auth::user()->adoptor_id;
        $stats = DB::table('adoptor_product')->where('adoptor_product.adoptor_id',$id)
        ->join('products', 'products.id', '=', 'adoptor_product.product_id')
        ->select('adoptor_product.id','note','status','name','image','description')
        ->get();
    return view('user.technology.index',compact('stats'));
   }
   public function updateStat(Request $request, $id)
   {
       $this->validate($request, [
           'status' => 'required',
          
       ]);
       DB::table('adoptor_product')
       ->where('adoptor_product.id', $id)
       ->update(['adoptor_product.status' => $request->status, 'adoptor_product.note' => $request->note]);

        //insert data to records table 
        //getting the data
        $techs = DB::table('adoptor_product')
            ->join('adoptors','adoptor_product.adoptor_id','adoptors.id')
            ->where('adoptor_product.id', $id)
            ->get();

        //loop the data
        foreach($techs as $tech){};
        //send email notification
        $users = User::where('role_id','1')->get();
        Notification::send($users,  new TechnologyNotif($tech));
        //insert data
        $record = new Record();
        $record->adoptor_id = Auth::user()->adoptor->id;
        $record->table = 'technology';
        $record->table_id = $tech->product_id;
        $record->description = $request->note;
        $record->status = $request->status;     //status if 0 it means not operational or negative, if 1 it means operational or positive
        $record->save();
        //end

       Toastr::success('Technology Successfully Updated ','Success');
       return redirect()->route('user.technology.index');
   }
}
