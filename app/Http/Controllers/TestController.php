<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Ixudra\Curl\Facades\Curl;

class TestController extends Controller
{
    public function getUsersPage() {
    	return view('front.get-users');
    }

    public function getUsers(Request $request) {

    // Send a GET request to: http://www.foo.com/bar with 2 custom headers
    $response = Curl::to('https://api.github.com/users/' . $request->input('users'))
        ->withHeader('User-Agent: Awesome-Octocat-App')
        ->get();

        $response = json_decode($response, true);

        dd($response);
    }
}
