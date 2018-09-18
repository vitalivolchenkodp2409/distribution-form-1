<?php

namespace App\Http\Controllers;


use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;

use App\User;
use App\Mail\Welcome;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Facades\Cookie;


class UsersController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'email' => 'required|unique:users',
            'name' => 'required|unique:users',
            'password' => 'min:6',
            'password_confirmation' => 'required_with:password|same:password|min:6'
        ]);

        $user = User::create(
            [
             'name'             => $request->input('name'),
             'email'            => $request->input('email'),
             'password'         => bcrypt($request->input('password')),
             'company'          => $request->input('company'),
             'contact_number'   => $request->input('contact_number'),
             'ip'               => $request->ip()
            ]);
        if($user){
            if(auth()->attempt(['email' => $request->input('email'), 'password' => $request->input('password')])){
                Mail::to($user->email)->send(new Welcome());
                return redirect()->to('/select-type');
            }
        }
        
        Session::flash('success','New user successfully created.');
        return back();
    }
    
    public function externalsignup(Request $request){
        // $cookie = $request->cookie('redirect_back');
        //$cookie=Cookie::get('redirect_back'); 
        if(isset($_COOKIE['redirect_back'])){
         $cookie= $_COOKIE['redirect_back'];
          //return $cookie;
        }
        if(empty($cookie)){
           abort(503);     
       }
        
      return view('external-form.signup');   
    }
    
    public function externalstore(Request $request)
     {
        if(isset($_COOKIE['redirect_back'])){
         $cookie= $_COOKIE['redirect_back'];
          //return $cookie;
        }
        
        if(empty($cookie)){
           abort(503);     
        }
         
        $request->validate([
            'email' => 'required|unique:users',
            'name' => 'required|unique:users',
            'password' => 'min:6',
            'password_confirmation' => 'required_with:password|same:password|min:6'
        ]);
        
         $input['name']=$request['name'];
         $input['password']=$request['password'];
         
        $user = User::create(
            [
             'name'             => $request->input('name'),
             'email'            => $request->input('email'),
             'password'         => bcrypt($request->input('password')),
             'company'          => $request->input('company'),
             'contact_number'   => $request->input('contact_number'),
             'ip'               => $request->ip()
            ]);

        if($user){
           // if(auth()->attempt(['email' => $request->input('email'), 'password' => $request->input('password')])){
                Mail::to($user->email)->send(new Welcome());
               
               $fields = http_build_query($input);
               
//                $ch = curl_init($cookie);
//                curl_setopt($ch, CURLOPT_POST, true);
//                curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
//                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
//                curl_setopt($ch, CURLOPT_TIMEOUT, 3);
//                $result = curl_exec($ch);

                return redirect()->away($cookie.'?'.$fields);
           // }
        }
        
        Session::flash('success','New user successfully created.');
        return back();
    }  
    
    public function someMethod()
    {
      $client->post('http:\\www.abletoaccess.com\form\request', [
        'form_params' => [
            'param1' => 'something',
        ]
      ]);
     }
    } 

