<?php

namespace App\Http\Controllers;

use App\Page;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function show($slug) {
        $page = Page::where('slug', $slug)->firstOrFail();
        if($page == null) {
            \abort(404, 'Page not found');
        }

        return view('front.page-simple', compact('page'));
    }
}
