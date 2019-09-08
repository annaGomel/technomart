@extends('template')

@section('content')
    <main class="container">
        <h1>{{ $category->title }}</h1>
        <p>{!! $category->description !!}</p>
        <p></p>
        <div class="catalog-block">
            @foreach($products as $product)
                <div class="catalog-item {{ $product->is_new == 1 ? 'new-item' : '' }}">
                    <figure class="catalog-item-image">
                        <img src="{{ asset('img') . '/' . $product->image }}" width="218" height="169" alt="Перфоратор Bosch BFG 9000">
                    </figure>
                    <div class="catalog-item-buttons">
                        <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                        <a href="{{ route('show.product', $product->slug) }}" class="catalog-button catalog-item-bookmark">Подробнее</a>
                    </div>
                    <p class="catalog-item-vendor">{{ $product->title }}</p>
                    <p class="catalog-item-model">{{ $product->model }}</p>
                    <p class="catalog-item-price" style="height: 27px;">{{ $product->old_price ? $product->old_price : '' }}</p>
                    <p class="catalog-item-discount">{{ $product->price }}</p>
                </div>
            @endforeach
            <div style="clear: both;"></div>
            {{ $products->links() }}
        </div>
    </main>
@endsection