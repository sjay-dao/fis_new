<?php

namespace App\Http\Controllers\User;

use App\Comment;
use App\Adoptor;
use App\Forum;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Auth;
use App\Notifications\Comment as AppComment;
use App\User;
use Illuminate\Support\Facades\Notification;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
          //validate
          $this->validate($request,[
            'id' => 'required',
            'comment' => 'required'
        ]);
        //check if post is existed
        $check = Forum::where('id',$request->id);
        if($check->count() <= 0){
            Toastr::warning('Post not found !!!','Warning');
            return redirect()->back();
        }
        //end    
    $comment = new Comment();
    $comment->forum_id = $request->id;
    $comment->user_id = Auth::user()->id;
    $comment->comment = $request->comment;
    $comment->save();
    $users = User::where('id',$comment->forum->user_id)->get();
    Notification::send($users, new AppComment($comment));
      Toastr::success('Comment Successfull submitted','success');
            return redirect()->back();
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function show(Comment $comment)
    {
        //
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function edit(Comment $comment)
    {
        //
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comment $comment)
    {
        $this->validate($request, [
            'comment' => 'required'
        ]);
        if($comment->user->id != Auth::user()->id){
            Toastr::error('Sorry, your are not authorized to make this action','error');
            return redirect()->back();
        }
        $comment->comment = $request->comment;
        $comment->save();
        Toastr::success('Comment Successfully edited','success');
                return redirect()->back();
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Comment $comment)
    {
        if($comment->user->id != Auth::user()->id){
            Toastr::error('Sorry, your are not authorized to make this action','error');
            return redirect()->back();
        }
        $comment->delete();
        Toastr::success('Comment Successfully Deleted','success');
                return redirect()->back();
    }
}
