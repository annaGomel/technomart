<?php

namespace App\Http\Controllers;

use App\Category;
use App\Cart;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ProductController extends Controller
{
    public function show($slug) {
        $product = Product::where('slug', $slug)->firstOrFail();

        if($product == null) {
            \abort(404, 'Page not found');
        }

        return view('front.product-single', compact('product'));
    }

    public function catalog()
    {
        $categories = Category::latest()->get();
        $products = Product::latest()->get();

        return view('front.catalog', compact('products', 'categories'));
    }
    public function getAddToCart(Request $request, $id) {

        $product = Product::find($id);

        $oldCart = Session::has('cart') ? Session::get('cart') : null;

        $cart = new Cart($oldCart);

        $cart->add($product, $product->id);

        $request->session()->put('cart', $cart);

        return redirect()->route('main.page');
    }

    public function showCart() {
        if(!Session::has('cart')) {
            return view('front.shopping-cart', [
              'products' => null
            ]);
        }

        $oldCart = Session::get('cart');

        $cart = new Cart($oldCart);

        return view('front.shopping-cart', [
            'products' => $cart->items,
            'totalQty' => $cart->totalQty,
            'totalPrice' => $cart->totalPrice
        ]);

    }

    public function destroy() {
        Session::forget('cart');

        return redirect()->route('main.page');
    }

    public function reduceByOne($id) {

        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->reduceByOne($id);
        if(count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
            return redirect()->route('main.page');
        }

        return redirect()->route('show.cart');

    }

    public function delete($id) {

        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->delete($id);
        if(count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
            return redirect()->route('main.page');
        }

        return redirect()->route('show.cart');

    }
}
