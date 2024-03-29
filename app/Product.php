<?php

namespace App;
use Encore\Admin\Traits\AdminBuilder;
use Illuminate\Database\Eloquent\Model;

class Product extends Model

{
    use  AdminBuilder;

    protected $fillable = [
        'slug', 'title', 'seo_title', 'meta_description', 'excerpt',
      'content', 'image', 'is_active', 'old_price', 'price', 'is_new',
        'is_recommended', 'category_id'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
