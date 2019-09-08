<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Ixudra\Curl\Facades\Curl;

class CheckoutController extends Controller
{
    public function checkout() {

        $cart = Session::get('cart');

        return view('front.checkout', compact('cart'));
    }

    public function checkoutForm(Request $request) {

        $cart = Session::get('cart');

        $order = Order::create([
          'cart' => serialize($cart),
          'name' => $request->input('name'),
          'phone' => $request->input('phone'),
          'status' => 'default',
          'client_email' => $request->input('client_email'),
        ]);

        $data = [
          'name' => $request->input('name'),
          'phone' => $request->input('phone'),
          'client_email' => $request->input('client_email'),
          'amount' => $cart->totalPrice * 100,
            'shop_id' => 4617,
            'currency' => 'USD',
            'description' => 'description',
            'order_id' => 1,
            'debug' => 1,
            'signature' => 'c1ee070b34d13574',
            'language' => 'ru'

        ];

        // Send a POST request to: http://www.foo.com/bar
        $response = Curl::to('https://megakassa.ru/merchant/')
                        ->withData($data)
                        ->post();

        Session::forget('cart');

        return redirect()->route('main.page');
    }

    public function success(Request $request) {
        return view('front.success');

    }

    public function getUser(Request $request) {

        // set IP address and API access key
//        $ip = $_SERVER['REMOTE_ADDR'];
//        $ip = '134.201.250.155';
        $ip = $request->input('ipadress');
        $access_key = '001c0649da112a89ad0c13de43f7a4e5';

        // Initialize CURL:
        $ch = curl_init('http://api.ipstack.com/'.$ip.'?access_key='.$access_key.'');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        // Store the data:
        $json = curl_exec($ch);
        curl_close($ch);

        // Decode JSON response:
        $api_result = json_decode($json, true);

        // Output the "capital" object inside "location"
        return $api_result['continent_name'];
    }

}
