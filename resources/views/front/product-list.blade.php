@extends('template')

@section('content')
    <main class="container">
        <ul class="breadcrumbs">
            <li>
                <a href="#">Каталог</a>
            </li>
            <li>
                <a href="#">Инструменты</a>
            </li>
            <li>
                <span>Перфораторы</span>
            </li>
        </ul>
        <h1 class="catalog-title">{{ $category->title }}</h1>
        <div class="catalog-container clearfix">
            <aside class="left-column">
                <form action="/search" method="get">
                    <p>Фильтр:</p>
                    <h3 class="catalog-filter-title">Производители:</h3>
                    <input id="bosch-checkbox" name="model[]" type="checkbox" value="bosch" >
                    <label for="bosch-checkbox">Bosch</label>
                    <input id="intersckol-checkbox" name="model[]" type="checkbox" value="intersckol">
                    <label for="intersckol-checkbox">Интерскол</label>
                    <input id="makita-checkbox" name="model[]" type="checkbox" value="makita" >
                    <label for="makita-checkbox">Makita</label>
                    <input id="dewalt-checkbox" name="model[]" type="checkbox" value="dewalt">
                    <label for="dewalt-checkbox">Dewalt</label>

                    <h3 class="catalog-filter-title">Категория:</h3>
                    <input type="checkbox" name="category[]" id="recatable" value="1" >
                    <label for="recatable">Материалы</label>
                    <input type="checkbox" name="category[]" id="uncatable" value="2">
                    <label for="unchargeable">Инструменты</label>

                    <h3 class="catalog-filter-title">Статус:</h3>
                    <input type="radio" name="status" id="recatable" value="1" >
                    <label for="recatable">На складе</label>
                    <input type="radio" name="status" id="uncatable" value="0">
                    <label for="unchargeable">Нет в наличии</label>
                    <button type="submit" class="filter-btn">Показать</button>
                </form>
            </aside>
            <section class="right-column catalog-goods-column clearfix">
                <div class="catalog-options clearfix">
                    <span>Сортировка:</span>
                    <div class="catalog-options-parameters">
                        <a href="#" class="catalog-options-variant catalog-options-price catalog-options-active">По цене</a>
                        <a href="#" class="catalog-options-variant catalog-options-type">По типу</a>
                        <a href="#" class="catalog-options-variant catalog-options-functions">По функционалу</a>
                        <a class="catalog-up-arrow catalog-options-active" href="#"></a>
                        <a class="catalog-down-arrow" href="#"></a>
                    </div>
                </div>
                <div class="catalog-block">
                    @foreach($products as $product)
                        <div class="catalog-item">
                            <figure class="catalog-item-image">
                                <img src="{{ asset('img') . '/' . $product->image }}" width="218" height="169" alt="{{ $product->title }}">
                            </figure>
                            <div class="catalog-item-buttons">
                                <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                                <a href="{{ route('show.product', $product->slug) }}" class="catalog-button catalog-item-bookmark">Подробнее</a>
                            </div>
                            <p class="catalog-item-vendor">{{ $product->title }}</p>
                            <p class="catalog-item-model">{{ $product->model }}</p>
                            @if($product->price)
                                <p class="catalog-item-discount">{{ $product->price }}</p>
                            @endif
                        </div>
                    @endforeach
                </div>
                <div class="catalog-paginator">
                    {{ $products->links() }}
                </div>
            </section>
        </div>
    </main>
    <div class="perforators">
        <h2 class="perforators-title container">{{ $category->title }}</h2>
        <p class="perforators-about container">{{ $category->description }}</p>
    </div>
@endsection