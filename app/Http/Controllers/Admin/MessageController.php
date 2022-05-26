<?php

namespace App\Http\Controllers\Admin;

use App\Adoptor;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Message;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $messages = Message::where('to',Auth::user()->adoptor->id)->latest()->get();
        $messageSent = Message::where('from',Auth::user()->adoptor->id)->latest()->get();
        return view('admin.message.index',compact('messages','messageSent'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $adoptors = Adoptor::orderBy('name','ASC')->get();
        return view('admin.message.create', compact('adoptors'));
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
            'subject' => 'required',
            'message' => 'required',
            
        ]);
        $slug = str_slug($request->subject);
        $message = new Message();
        $message->from = Auth::user()->adoptor->id;
        $message->to = $request->adoptorId;
        $message->slug = $slug;
        $message->subject = $request->subject;
        $message->message = $request->message;
        $message->status = '0';
        $message->save();
        Toastr::success('Message Sent','Success');
        return redirect()->route('admin.message.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        $message = Message::find($id);
        $message->status = '1';
        $message->save();
        return view ('admin.message.show',compact('message'));
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
        $message = Message::find($id);
        $this->validate($request, [
            'subject' => 'required',
            'message' => 'required',
        ]);
            if($message->from != Auth::user()->adoptor->id){
                Toastr::error('Something wrong','error');
                    return redirect()->route('admin.message.index');
            }
        $message->from = Auth::user()->adoptor->id;
        $message->subject = $request->subject;
        $message->message = $request->message;
        $message->save();
        Toastr::success('Message successfully updated','Success');
        return redirect()->route('admin.message.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $message = Message::find($id);
        if($message->from == Auth::user()->adoptor->id){
            $message->delete();
            Toastr::success('Message successfully deleted','Success');
        return redirect()->route('admin.message.index');
        }else {
            Toastr::error('Something wrong','error');
                return redirect()->route('admin.message.index');
        }

    }
    

    public function reply(Request $request){
        $this->validate($request, [
            'message' => 'required',
            'messageId' => 'required',
        ]);
        $messageCred = Message::find($request->messageId);

        $message = new Message();
        $message->from = Auth::user()->adoptor->id;
        $message->to = $messageCred->from;
        $message->slug = $messageCred->slug;
        $message->subject = $messageCred->subject;
        $message->message = $request->message;
        $message->status = '0';
        $message->save();
        Toastr::success('Message Sent','Success');
        return redirect()->route('admin.message.index');
    }
}
