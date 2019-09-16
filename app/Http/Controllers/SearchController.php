<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use App\Product;
use App\ProductFilter\ProductFilter;

class SearchController extends Controller
{
    public static function filter(Request $request) {
        $products = Product::where('title', 'LIKE', $request->input('search'))->get();

        return view('front.search-page', compact('products'));
    }
}
