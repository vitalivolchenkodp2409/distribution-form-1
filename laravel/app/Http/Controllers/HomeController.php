<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use Session;
use App\Zero;
use App\One;
use App\Two;
use App\Three;
use App\Four;
use App\Five;
use Validator;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function select_type()
    {
        return view('selectType');
    }

    public function save_type($type)
    {

        $id = Auth::id();
        $user = User::find($id);
        $user->type = $type;
        $user->save();
        $this->recount($type);
        return redirect()->to('/home');
    }

    public function select_avatar()
    {
     $data['user']=Auth::user();
     return view('selectAvatar',$data);
    }

    public function save_avatar(Request $request)
    {
        $this->validate($request, [
                   'avatar' => 'required|mimes:jpeg,jpg,png', //only allow this type extension file.
           ]);

        $user=User::find(Auth::user()->id);

        if($photo = $request->file('avatar'))
        {
          $root = base_path().'public/images/';
          dd($root);
          $name = str_random(20).".".$photo->getClientOriginalExtension();
            if (!file_exists($root)) {
                mkdir($root, 0777, true);
            }
            $image_path = 'images/'.$name;
            $photo->move($root,$name);
            $input['avatar'] = $image_path;
            $user->update($input);
        }



        return redirect()->to('/home');
    }


    public function recount($type)
    {
        $user = Auth::user();
        if($type == 'advance'){
            if((Zero::where('user_id', $user->id)->count() == 1) && (One::where('user_id', $user->id)->count() == 1) && (Two::where('user_id', $user->id)->count() == 1) && (Three::where('user_id', $user->id)->count() == 1) && (Four::where('user_id', $user->id)->count() == 1) && (Five::where('user_id', $user->id)->count() == 1) ){


                $point = One::where('user_id', $user->id)->first()->point + Two::where('user_id', $user->id)->first()->point + Three::where('user_id', $user->id)->first()->point + Four::where('user_id', $user->id)->first()->point + Five::where('user_id', $user->id)->first()->point;

                $update_user = User::find($user->id);
                $update_user->point = $point;
                $update_user->is_locked = 1;
                $update_user->save();

            }else{
                $update_user = User::find($user->id);
                $update_user->point = 0;
                $update_user->is_locked = 0;
                $update_user->save();
            }
        }else{
            
            if((Zero::where('user_id', $user->id)->count() == 1) && (One::where('user_id', $user->id)->count() == 1) && (Two::where('user_id', $user->id)->count() == 1) && (Three::where('user_id', $user->id)->count() == 1) ){


                $point = One::where('user_id', $user->id)->first()->point + Two::where('user_id', $user->id)->first()->point + Three::where('user_id', $user->id)->first()->point;

                $update_user = User::find($user->id);
                $update_user->point = $point;
                $update_user->is_locked = 1;
                $update_user->save();

            }else{
                $update_user = User::find($user->id);
                $update_user->point = 0;
                $update_user->is_locked = 0;
                $update_user->save();
            }
        }
        
    }

    public function saveUserAvatar(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_avatar' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        if ($validator->fails()) {
            return back()->with('error',$validator->errors()->first());            
        }

        $user_avatar = $request->file('user_avatar');

        $imagename = time().rand(1111,9999).'.'.$user_avatar->getClientOriginalExtension();

        $destinationPath = public_path('/images/user');
        $user_avatar->move($destinationPath, $imagename);

        $user = Auth::user();
        $update_user = User::find($user->id);
        $update_user->avatar = 'images/user/'.$imagename;
        $update_user->save();

        return back()->with('success','User avatar change successfully.');
    }

}
