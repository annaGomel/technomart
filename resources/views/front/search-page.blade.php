@extends('template')

@section('content')
    <main class="container">
        <h2>Поиск</h2>
        <form action="{{ route('search') }}" method="post">
            {{ csrf_field() }}
            <input type="search" name="search" id="search" placeholder="Поиск:" required>
            <label for="search"></label>
        </form>
        @if($products->count())
            @foreach($products as $product)
                <div class="catalog-item" style="width:30%">
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
            @else
        <h2>Совпадений не найдено</h2>
            @endif
    </main>
@endsection