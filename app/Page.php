<?php

namespace App;
use Encore\Admin\Traits\AdminBuilder;
use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    use  AdminBuilder;

    protected $fillable = [
      'slug', 'title', 'seo_title', 'meta_description', 'content', 'settings'
    ];

    protected $casts = [
      'settings' => 'array'
    ];
}
