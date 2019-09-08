<?php

namespace App\ProductFilter\Filters;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;

class Status implements Filter {
    public static function apply(Builder $builder, $value){

        if(!empty($value)) {

            return DB::table('products')->where('status', $value)->get();

        }
    }
}