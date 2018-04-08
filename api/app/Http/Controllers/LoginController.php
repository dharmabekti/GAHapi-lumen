<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Model\User;
use Auth;
use DB;

class LoginController extends Controller
{
    public function register_user(Request $request)
    {
      $this->validate($request, [
            'username' => 'required|unique:tbl_user', // Username
            'password' => 'required|min:6' // Password
        ]);

      try
      {
        $user_data = $request->except('_token');
        $user_data['USERNAME'] = $user_data['username'];
        $user_data['PASSWORD'] = $user_data['password'];;
        $user_data['ID_ROLE'] = 6;

        DB::beginTransaction();

        User::create($user_data);
        DB::commit();
        $result = [
          'status' => 'true',
          'status_code' => 200,
          'message' => 'Register Berhasil',
          'info' => $user_data
        ];
        return response()->json($result);

      } catch (Exception $ex) {
        DB::rollback();
        $result = [
          'status' => 'false',
          'status_code' => 500,
          'message' => $ex
        ];
        return response()->json($result);
      }
    }


    public function login_user(Request $request)
    {
        $this->validate($request, [
            'username' => 'required',
            'password' => 'required'
        ]);

        try 
        {
          $user_data = $request->except('_token');
          // $username = $user_data['username'];
          // $password = $user_data['password'];
          // DB::beginTransaction();
          $user = User::where('USERNAME', $user_data['username'])->where('PASSWORD', $user_data['password'])->first();
          // DB::commit();

          if(!empty($user))
          {
            $result = [
              'status' => 'true',
              'status_code' => 200,
              'message' => 'Login Berhasil',
              'info' => $user
            ];

            return response()->json($result);
          }
          else {
            $result = [
              'status' => 'false',
              'status_code' => 401,
              'message' => 'Username atau Password Salah...'
            ];

            return response()->json($result);
          }

        } catch (Exception $e) {
          DB::rollback();
          $result = [
            'status' => 'false',
            'status_code' => 500,
            'message' =>'Login Gagal',
            'info' => $ex
          ];

          return response()->json($result);
        }
    }
}
