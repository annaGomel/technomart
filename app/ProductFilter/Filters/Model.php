<?php

namespace App\ProductFilter\Filters;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;

class Model implements Filter {
    public static function apply(Builder $builder, $value){

        if(!empty($value)) {

            return DB::table('products')
                     ->orWhere(function ($query) use ($value) {
                        $query->orWhere('model', $value);
            })->get();
        }

    }
}