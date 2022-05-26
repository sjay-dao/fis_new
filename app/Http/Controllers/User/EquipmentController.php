<?php

namespace App\Http\Controllers\User;

use App\Equipment;
use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Notifications\Equipment as NotificationsEquipment;
use App\Notifications\EquipmentNotif;
use App\OtherEquipment;
use App\Record;
use Auth;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Notification;

class EquipmentController extends Controller
{
    public function index()
    {
        $otherEquipment = OtherEquipment::where('adoptor_id',Auth::user()->adoptor->id)->get();
       $id = Auth::user()->adoptor_id;
        $stats = DB::table('adoptor_equipment')->where('adoptor_equipment.adoptor_id',$id)
        ->join('equipment', 'equipment.id', '=', 'adoptor_equipment.equipment_id')
        ->select('adoptor_equipment.id','problem','status','name')
        ->get();
        
       return view('user.equipment.index',compact('stats','otherEquipment'));
    }
    public function updateStat(Request $request, $id)
    {
         
        
        DB::table('adoptor_equipment')
        ->where('adoptor_equipment.id', $id)
        ->update(['adoptor_equipment.status' => $request->status, 'adoptor_equipment.problem' => $request->note]);
     
        $this->validate($request, [
            'status' => 'required',
        ]);

       

        $equipment = DB::table('adoptor_equipment')
        ->join('equipment','adoptor_equipment.equipment_id','=','equipment.id')
        ->join('adoptors','adoptor_equipment.adoptor_id','=','adoptors.id')
        ->select('adoptors.name as adoptor','equipment.name as equipment','equipment.id as equipment_id','adoptor_equipment.status as status','adoptor_equipment.problem as problem','adoptor_equipment.id as ad_id')
        ->where('adoptor_equipment.id',$id)
        ->get();
        foreach($equipment as $equip){}
         //email notification
         $users = User::where('role_id','1')->get();
         Notification::send($users,  new EquipmentNotif($equip));


        //insert data to records table 
        $record = new Record();
        $record->adoptor_id = Auth::user()->adoptor->id;
        $record->table = 'equipment';
        $record->table_id = $equip->equipment_id;
        $record->description = $request->problem;
        $record->status = $equip->status;     //status if 0 it means not operational or negative, if 1 it means operational or positive
        $record->save();
        //end
        
        Toastr::success('Equipment Successfully Updated ','Success');
        return redirect()->route('user.equipment.index');
    }
}
