<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Adoptor;
use App\Faq;
use App\Notifications\Inquery;
use Illuminate\Support\Facades\Notification;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use App\Inquiry;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // $adoptors = Adoptor::inRandomOrder()->paginate(3);
        $faqs = Faq::all();
        return view('welcome', compact('faqs'));
    }
    public function adoptor($id)
    {
        $ad = Adoptor::find($id);
        return view('adoptor',compact('ad'));
    }
     
    
    
}
