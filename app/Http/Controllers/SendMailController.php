<?php

namespace App\Http\Controllers;

use App\Inquiry;
use Illuminate\Http\Request;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Notification;
use App\Notifications\Inquery;

class SendMailController extends Controller
{
    public function sendMail(Request $request)
    {
     $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'subject' =>'required',
            'message' => 'required'
        ]);
        $inquiry = new Inquiry();
        $inquiry->user_id = '1';
        $inquiry->name  = $request->name;
        $inquiry->email  = $request->email;
        $inquiry->subject  = $request->subject;
        $inquiry->message  = $request->message;
        $inquiry->save();
        $users = User::where('role_id','1')->get();
        Notification::send($users, new Inquery($inquiry));
        Toastr::success('Inquiry Successfully sent', 'Success');
        return redirect()->back();
    }
}
