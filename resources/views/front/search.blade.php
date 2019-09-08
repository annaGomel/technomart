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
        <h1 class="catalog-title">Перфораторы</h1>
        <div class="catalog-container clearfix">
            <aside class="left-column catalog-filter-column">
                <form action="/filter" method="post">
                    <p>Фильтр:</p>
                    <h3 class="catalog-filter-title">Цена:</h3>
                    <div class="catalog-range-filter">
                        <div class="catalog-filter-controls">
                            <div class="catalog-filter-scale">
                                <div class="catalog-scale-bar"></div>
                            </div>
                            <div class="catalog-scale-toggle catalog-min-toggle"></div>
                            <div class="catalog-scale-toggle catalog-max-toggle"></div>
                        </div>
                        <div class="catalog-price-controls clearfix">
                            <input class="catalog-min-price" type="text" value="0">
                            <span class="catalog-minus-sign">—</span>
                            <input class="catalog-max-price" type="text" value="30 000">
                        </div>
                    </div>
                    <h3 class="catalog-filter-title">Производители:</h3>
                    <input id="bosch-checkbox" name="bosch" type="checkbox" value="bosch" checked>
                    <label for="bosch-checkbox">Bosch</label>
                    <input id="intersckol-checkbox" name="intersckol" type="checkbox" value="intersckol">
                    <label for="intersckol-checkbox">Интерскол</label>
                    <input id="makita-checkbox" name="makita" type="checkbox" value="makita" checked disabled>
                    <label for="makita-checkbox">Makita</label>
                    <input id="dewalt-checkbox" name="dewalt" type="checkbox" value="dewalt">
                    <label for="dewalt-checkbox">Dewalt</label>
                    <input id="hitachi-checkbox" name="hitachi" type="checkbox" value="hitachi">
                    <label for="hitachi-checkbox">Hitachi</label>
                    <h3 class="catalog-filter-title">Питание:</h3>
                    <input type="radio" name="charge" id="rechargeable" value="rechargeable" checked>
                    <label for="rechargeable">Аккумуляторные</label>
                    <input type="radio" name="charge" id="unchargeable" value="unchargeable">
                    <label for="unchargeable">Сетевые</label>
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
                </div>
                <div class="catalog-paginator">
                    <span class="catalog-paginator-active">1</span>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#" class="catalog-paginator-next">Следующая</a>
                </div>
            </section>
        </div>
    </main>
@endsection