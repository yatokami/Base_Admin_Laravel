<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use GuzzleHttp\Client;
use App\Models\Admin;
use App\Http\Controllers\ApiController;

class PassportController extends ApiController
{
    public function login(Request $request){
        if(Auth::attempt(['account' => request('username'), 'password' => request('password')])){
            $client = new Client();
            try {
                $request = $client->request('POST', request()->root() . '/oauth/token', [
                    'form_params' => config('passport') +  $request->input()
                ]);
            } catch (RequestException $e) {
                return $this->status(401, ['error' => '账号验证失败']);      
            }
            return $this->success(['success' => $request->getBody()->getContents()]);
        }
        else{
            return $this->failed('Unauthorised');
        }
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'account' => 'required',
            'email' => 'required|email',
            'password' => 'required'
        ]);
 
        if ($validator->fails()) {
            return $this->status('fails', ['error'=>$validator->errors()], '401');      
        }
 
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = Admin::create($input);
        // $success['token'] =  $user->createToken('MyApp')->accessToken;
        $success['account'] =  $user->account;
        
        return $this->success(['success' => $success]);
    }

    public function logout()
    {
        if (\Auth::guard('api')->check()) {
            \Auth::guard('api')->user()->token()->delete();
        }
        return $this->success(['message' => '登出成功']);
    }

    /**
     * details api
     *
     * @return \Illuminate\Http\Response
     */
    public function getDetails()
    {
        $user = Auth::user();
        return $this->success(['success' => $user]);
    }
}
