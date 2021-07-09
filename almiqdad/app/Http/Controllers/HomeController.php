<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Slider;
use App\OurWork;

use App\Mail\Welcome;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     return view('home');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $slides = Slider::all();
        $owr_work = OurWork::all();
        return view('home',[
            "slides"=>$slides,
            "ourWork"=>$owr_work
        ]);
    }


    
    public function contactUs(Request $request){
            // return $request->UserName."<br>". $request->UserEmail ."<br>". $request->UserMessage;

            \Mail::to($request->UserEmail)->send(new Welcome);
            \Mail::to('alnouirah@gmail.com')->send(new Welcome);
            return back();
    }


}
