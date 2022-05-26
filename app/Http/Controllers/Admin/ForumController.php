<?php

namespace App\Http\Controllers\Admin;

use App\forum;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\Adoptor;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Notification;
use App\Notifications\NewQuestionPost;
use Illuminate\Support\Facades\Session;
use App\User;
use DB;
use App\Comment;

class ForumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $postPending = Forum::where('status','0')->get();
        $posts = Forum::where('user_id',Auth::user()->id)->get();
        $forums = Forum::latest()->paginate(10);
        $adoptors = Adoptor::inRandomOrder()->get();
        return view('admin.forum.index',compact('forums','adoptors','posts','postPending'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.forum.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->Validate($request,[
            'title' => 'required',
            'question' => 'required|min:10',
            'file' => 'required|image'
        ]);
        $image = $request->file('file');
        $slug = str_slug($request->title);

        $check = Forum::where('slug',$slug)->count();
        if($check >= 1){
            Toastr::warning('The Title is already exist to the database !!!','Warning');
            return redirect()->route('admin.forum.index');
        }

        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('forum_images'))
            {
                Storage::disk('public')->makeDirectory('forum_images');
            }
            $adop = Image::make($image)->resize(800,600)->save(90);
            Storage::disk('public')->put('forum_images/'.$imageName,$adop);
        }else {
            $imageName = "default.png";
        }

        $forum = new Forum();
        $forum->user_id = Auth::user()->id;
        $forum->title = $request->title;
        $forum->slug = $slug;
        $forum->body = $request->question;
        $forum->view = 0;
        $forum->image = $imageName;
        $forum->save();

        $users = User::all();
        Notification::send($users, new NewQuestionPost($forum));

        Toastr::success('Successfully Posted','Success');
        return redirect()->route('admin.forum.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $forum = Forum::where('slug',$slug)->first();
        
        $posts = Forum::inRandomOrder()->get();
        $forumKey = 'forum_'.$forum->id;
        if(!Session::has($forumKey)){
            $forum->increment('view');
            Session::put($forumKey,1);
        }
          $comments = Comment::where('forum_id',$forum->id)->get();
          return view('admin.forum.show',compact('forum','posts','comments'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function edit(forum $forum)
    {
        if($forum->user->id != Auth::user()->id){
            Toastr::info('You are not authorized to edit this','message');
            return redirect()->back();
        }
        return view('admin.forum.edit',compact('forum'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, forum $forum)
    {
        if($forum->user->id != Auth::user()->id){
            Toastr::info('You are not authorized Please contact the admin','message');
            return redirect()->back();
        }
        $this->Validate($request,[
            'title' => 'required',
            'question' => 'required|min:10'
        ]);
        $image = $request->file('file');
        $slug = str_slug($request->title);
        $check = Forum::where('slug',$slug)->get();
        if($check->count() >= 2){
                Toastr::warning('The Title is already exist to the database !!!','Warning');
                return redirect()->route('admin.forum.index');
        }
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('forum_images'))
            {
                Storage::disk('public')->makeDirectory('forum_images');
            }
             // delete old image
             if(Storage::disk('public')->exists('forum_images/'.$forum->image))
             {
                 Storage::disk('public')->delete('forum_images/'.$forum->image);
             }
            $adop = Image::make($image)->resize(800,600)->save(90);
            Storage::disk('public')->put('forum_images/'.$imageName,$adop);
        }else {
            $imageName = $forum->image;
        }
        $forum->user_id = Auth::user()->id;
        $forum->title = $request->title;
        $forum->slug = $slug;
        $forum->body = $request->question;
        $forum->view = $forum->view;
        $forum->image = $imageName;
        $forum->save();

        Toastr::success('Successfully Updated','Success');
        return redirect()->route('admin.forum.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function destroy(forum $forum)
    {
        if($forum->user->id != Auth::user()->id){
            Toastr::info('You are not authorized Please contact the admin','message');
            return redirect()->back();
        }
        $forum->delete();
        $comments = Comment::where('forum_id',$forum->id)->delete();
        Toastr::success('Successfully Deleted','Success');
        return redirect()->back();

    }
    public function myPost()
    {
        $posts = Forum::where('user_id',Auth::user()->id)->paginate(10);

        return view('admin.forum.posts',compact('posts'));
    }
    public function userPost($id){
        $adoptor = DB::table('adoptors')
                        ->join('users','users.adoptor_id','=','adoptors.id')
                        ->where('adoptors.id',$id)
                        ->select(
                            'adoptors.name  as adoptor_name',
                            'adoptors.image as adoptor_image',
                            'adoptors.id    as adoptor_id',
                            'users.name     as user_name',
                            'users.id       as user_id',
                            'users.image    as user_image'
                        )
                        ->get();
                      
        $p_posts = DB::table('adoptors')
                    ->join('users','users.adoptor_id','=','adoptors.id')
                    ->join('forums','forums.user_id','=','users.id')
                    ->where('adoptors.id',$id)
                    ->select(
                        'adoptors.name  as adoptor_name',
                        'adoptors.image as adoptor_image',
                        'adoptors.id    as adoptor_id',
                        'users.name     as user_name',
                        'users.id       as user_id',
                        'users.image    as user_image',
                        'forums.title   as forum_title',
                        'forums.slug    as forum_slug',
                        'forums.image   as forum_image'
                        )
                        ->orderBy('view','DESC')
                    ->get();
            $post = DB::table('adoptors')
                ->join('users','users.adoptor_id','=','adoptors.id')
                ->join('forums','forums.user_id','=','users.id')
                ->where('adoptors.id',$id)
                ->select(
                    
                    'users.image       as user_image',
                    'forums.title      as forum_title',
                    'forums.slug       as forum_slug',
                    'forums.image      as forum_image',
                    'forums.body       as forum_body',
                    'forums.created_at as forum_created'
                    )->limit(5)
                ->get();
//                
return view('admin.forum.user-posts',compact('adoptor','p_posts'));
    }

    public function pending(){
        $posts = Forum::where('status','0')->get();
         return view('admin.forum.pending',compact('posts'));
    }

    public function approvePost($id){
        $post = Forum::find($id);
        $post->status = '1';
        $post->save();
        Toastr::success('Successfully Approved','Success');
        return redirect()->back();
    }

}
