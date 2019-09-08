<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use App\Product;
use App\ProductFilter\ProductFilter;

class SearchController extends Controller
{
    public static function filter(Request $request, Builder $builder) {
     $products = ProductFilter::applyFiltersToQuery($request, $builder);

    	dd($products);


        return view('front.search-page', compact('products'));
    }
}
