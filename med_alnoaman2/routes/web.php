<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('lang/{lang}',function($lang){

    if(in_array($lang,['ar','en','es'])){
        if(auth()->user()){
            $user = auth()->user();
            $user->lang=$lang;
            $user->save();
        }else{
            if(session()->has('lang')){
                session()->forget('lang');
            }
            session()->put('lang',$lang);
        }
    }else{

        if(auth()->user()){
            $user = auth()->user();
            $user->lang='ar';
            $user->save();
        }else{
            if(session()->has('lang')){
                session()->forget('lang');
            }
            session()->put('lang',$lang);
        }

        session()->put('lang','ar');
    }

    return back();
});


Route::group(['middleware'=>'Lang'],function(){
    Route::get('/',"HomeController@index");
});

Route::post('contactUs','HomeController@contactUs');



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
