<?php

namespace App;
use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use ModelTree, AdminBuilder;

    protected $fillable = [
        'slug', 'title','description', 'logo', 'parent_id'
    ];

    public function products()
    {
        return $this->hasMany(Product::class);
    }
}
