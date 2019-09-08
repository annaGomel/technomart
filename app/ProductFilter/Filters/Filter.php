<?php

namespace App\ProductFilter\Filters;

use Illuminate\Database\Eloquent\Builder;

interface Filter {
    public static function apply(Builder $builder, $value);
}

