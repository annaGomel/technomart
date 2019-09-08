<?php

namespace App\Providers;

use DB;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $menus = DB::table('menus')
                   ->where('is_active', 1)
                   ->orderBy('sort', 'asc')
                   ->limit(7)
                   ->get();

        \View::share('menus', $menus);
        \View::share('settings', \App\Setting::firstOrFail());
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
