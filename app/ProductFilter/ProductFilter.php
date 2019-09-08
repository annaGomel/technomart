<?php

namespace App\ProductFilter;

use Illuminate\Database\Eloquent\Builder;
use Symfony\Component\HttpFoundation\Request;
use App\Product;

class ProductFilter {

    public static function applyFiltersToQuery(
      Request $request, Builder $builder)
    {
        $query = (new Product)->newQuery();

        foreach($request->all() as $filterName => $value) {

            $decorator = __NAMESPACE__ . '\\Filters\\'
                     . str_replace(' ', '',
                       ucwords(str_replace('_', ' ', $filterName)));

            if(class_exists($decorator)) {
                $query = $decorator::apply($builder, $value);
            }

            return $query;
        }
    }
}