<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Redirect;
use App\User;

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
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/admin';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest', ['except' => 'logout']);
    }

    //Делаем авторизацию по полю login вместо стандартного email
    public function username()
    {
        return 'login';
    }

    //Перенаправление на страницу логина после выхода пользователя из системы
    public function logout()
    {
        Auth::logout();

        return redirect('/admin');
    }

    public function showLoginForm()
    {
        return view('admin.login');
    }

    public function register() {
        if (Request::isMethod('post')) {
            User::create(['name' => Request::get('name'), 'email' => Request::get('email'), 'password' => bcrypt(Request::get('password')),]);
        }

        return Redirect::away('login');
    }

}
