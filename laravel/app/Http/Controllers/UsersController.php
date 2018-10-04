<?php

namespace App\Http\Controllers;
use App\SocialProvider;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;
use Exception;
use App\User;
use App\Mail\Welcome;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Facades\Cookie;
use SoapClient;
use App\Monsterid\Monsterid;


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

        // $avatar=$this->getavatar($request->input('email'));
        $avatar = Monsterid::build_monster($request->input('email'), 100, time().rand(1111,9999)); 
        
        if(empty($avatar)){
            $avatar=$request->input('avatar');
        }
        $arrows=null;
        //dd($avatar);
        //$avatar="aa";
         if (Session::has('provider') && Session::has('provider_id')) {
            
            $provider_id = Session::get('provider_id');
            
            $provider = Session::get('provider');
            $avatar = Session::get('avatar');            
            $arrows = Session::get('arrows');
            $arrows = (float)$arrows;
            if($arrows > 30){
                $arrows = 30;
            }            
            ///check isset authUser
            $authUser = User::where('email', $request->email)->first();
            if(!$authUser) {
                $user = User::create(
                    [
                        'name' => $request->input('name'),
                        'email' => $request->input('email'),
                        'avatar' => $avatar,
                        'arrows' => $arrows,
                        'password' => bcrypt($request->input('password')),
                        'company' => $request->input('company'),
                        'contact_number' => $request->input('contact_number'),
                        'ip' => $request->ip()
                    ]);
                $user_id = $user->id;
                $provider = Session::get('provider');
                $provider_id = Session::get('provider_id');
                //create provider in db
                $socialProvider = $user->socialProviders()->create([
                    'provider' => $provider,
                    'provider_id' => $provider_id,
                ]);                
                Session::forget('provider');
                Session::forget('provider_id');
                Session::forget('avatar');
                Session::forget('arrows');
                Session::forget('provider_token');
                Auth::login($user, true);
                return redirect()->to('/select-type');
            } else {
                $user_id = $authUser->id;                
                $provider = Session::get('provider');
                $provider_id = Session::get('provider_id');
                //create provider in db
                $socialProvider = $authUser->socialProviders()->create([
                    'provider' => $provider,
                    'provider_id' => $provider_id,
                ]);                
                Session::forget('provider');
                Session::forget('provider_id');
                Session::forget('avatar');
                Session::forget('arrows');
                
                Auth::login($authUser, true);
                return redirect()->to('home');
            }
        } else {
		$user = User::create(
		    [
		     'name'             => $request->input('name'),
		     'email'            => $request->input('email'),
		     'password'         => bcrypt($request->input('password')),
		    // 'company'          => $request->input('company'),
		    // 'contact_number'   => $request->input('contact_number'),
		     'ip'               => $request->ip(),
		     'avatar'           => $avatar,   
		]);
		
		if($user){
		    if(auth()->attempt(['email' => $request->input('email'), 'password' => $request->input('password')])){
		        Mail::to($user->email)->send(new Welcome());
		        return redirect()->to('/select-type');
		    }
		}
	}
        
        Session::flash('success','New user successfully created.');
        return back();
    }
    
    public function getavatar($email){
        $image="";

        try{
        $client = new SoapClient("http://www.avatarapi.com/avatar.asmx?wsdl");
        
        $params = array (
        "email" => $email,
        "username" => env('AVATAR_UNAME'),
        "password" => env('AVATAR_PASSWORD')
        );
        
        $response = $client->__soapCall('GetProfile', array($params));
        if(isset($response->GetProfileResult->Image)){
            $image=$response->GetProfileResult->Image;
        }
       // echo "<pre>";
        return $image;
        }
        catch(\Exception $e){
          return $image; 
        }
        //print_r($response->GetProfileResult->Image);
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

