<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\User;
use GuzzleHttp\Client;
use Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    //protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       //$this->middleware('guest')->except('logout');
    }

    /**
     * 获取登录TOKEN
     * @param LoginRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function token(Request $request)
    {
        
        $username = $request->input('username');

        $user = User::orWhere('username', $username)->first();
        if ($user && ($user->nullity == 1)) {
            return response()->json("账号已经被禁用");
        }
        
        $http = new Client();
        try {
            $request = $http->request('POST', request()->root() . '/oauth/token', [
                'form_params' => config('password') + $request->all()
            ]);
        } catch (RequestException $e) {
            return response()->json("账号验证失败");
        }

        if ($request->getStatusCode() == 401) {
            return response()->json("账号验证失败");
        }
        return json_decode((string) $request->getBody()->getContents(), true);
    }

     /**
     * 退出登录
     */
    public function logout()
    {
        if (\Auth::guard('api')->check()) {
            \Auth::guard('api')->user()->token()->delete();
        }

        return response()->json(['message' => '登出成功', 'status_code' => 200, 'data' => null]);
    }
}
