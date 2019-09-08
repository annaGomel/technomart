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
                <form action="/search" method="post">
                    {{ csrf_field() }}
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

                    <h3 class="catalog-filter-title">Питание:</h3>
                    <input type="radio" name="cat" id="recatable" value="recatable" >
                    <label for="recatable">Аккумуляторные</label>
                    <input type="radio" name="cat" id="uncatable" value="uncatable">
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
                    <div class="catalog-item">
                        <figure class="catalog-item-image">
                            <img src="img/catalog-item-bfg-3000.jpg" width="218" height="169" alt="Перфоратор BOSCH BFG 3000">
                        </figure>
                        <div class="catalog-item-buttons">
                            <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                            <a href="#" class="catalog-button catalog-item-bookmark">В закладки</a>
                        </div>
                        <p class="catalog-item-vendor">Перфоратор BOSCH</p>
                        <p class="catalog-item-model">BFG 3000</p>
                        <p class="catalog-item-price">22 500 Р.</p>
                        <p class="catalog-item-discount">15 500 Р.</p>
                    </div>
                    <div class="catalog-item">
                        <figure class="catalog-item-image">
                            <img src="img/catalog-item-bfg-6000.jpg" width="218" height="169" alt="Перфоратор BOSCH BFG 6000">
                        </figure>
                        <div class="catalog-item-buttons">
                            <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                            <a href="#" class="catalog-button catalog-item-bookmark">В закладки</a>
                        </div>
                        <p class="catalog-item-vendor">Перфоратор BOSCH</p>
                        <p class="catalog-item-model">BFG 6000</p>
                        <p class="catalog-item-price">30 500 Р.</p>
                        <p class="catalog-item-discount">25 500 Р.</p>
                    </div>
                    <div class="catalog-item new-item catalog-item-active">
                        <figure class="catalog-item-image">
                            <img src="img/catalog-item-bfg-2000.jpg" width="218" height="169" alt="Перфоратор BOSCH BFG 2000">
                        </figure>
                        <div class="catalog-item-buttons">
                            <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                            <a href="#" class="catalog-button catalog-item-bookmark">В закладки</a>
                        </div>
                        <p class="catalog-item-vendor">Перфоратор BOSCH</p>
                        <p class="catalog-item-model">BFG 2000</p>
                        <p class="catalog-item-discount">12 500 Р.</p>
                    </div>
                    <div class="catalog-item">
                        <figure class="catalog-item-image">
                            <img src="img/catalog-item-bfg-3000.jpg" width="218" height="169" alt="Перфоратор BOSCH BFG 3000">
                        </figure>
                        <div class="catalog-item-buttons">
                            <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                            <a href="#" class="catalog-button catalog-item-bookmark">В закладки</a>
                        </div>
                        <p class="catalog-item-vendor">Перфоратор BOSCH</p>
                        <p class="catalog-item-model">BFG 3000</p>
                        <p class="catalog-item-price">22 500 Р.</p>
                        <p class="catalog-item-discount">15 500 Р.</p>
                    </div>
                    <div class="catalog-item new-item">
                        <figure class="catalog-item-image">
                            <img src="img/catalog-item-bfg-6000.jpg" width="218" height="169" alt="Перфоратор BOSCH BFG 6000">
                        </figure>
                        <div class="catalog-item-buttons">
                            <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                            <a href="#" class="catalog-button catalog-item-bookmark">В закладки</a>
                        </div>
                        <p class="catalog-item-vendor">Перфоратор BOSCH</p>
                        <p class="catalog-item-model">BFG 6000</p>
                        <p class="catalog-item-price">30 500 Р.</p>
                        <p class="catalog-item-discount">25 500 Р.</p>
                    </div>
                    <div class="catalog-item">
                        <figure class="catalog-item-image">
                            <img src="img/catalog-item-bfg-2000.jpg" width="218" height="169" alt="Перфоратор BOSCH BFG 2000">
                        </figure>
                        <div class="catalog-item-buttons">
                            <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                            <a href="#" class="catalog-button catalog-item-bookmark">В закладки</a>
                        </div>
                        <p class="catalog-item-vendor">Перфоратор BOSCH</p>
                        <p class="catalog-item-model">BFG 2000</p>
                        <p class="catalog-item-discount">12 500 Р.</p>
                    </div>
                    <div class="catalog-item">
                        <figure class="catalog-item-image">
                            <img src="img/catalog-item-bfg-3000.jpg" width="218" height="169" alt="Перфоратор BOSCH BFG 3000">
                        </figure>
                        <div class="catalog-item-buttons">
                            <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                            <a href="#" class="catalog-button catalog-item-bookmark">В закладки</a>
                        </div>
                        <p class="catalog-item-vendor">Перфоратор BOSCH</p>
                        <p class="catalog-item-model">BFG 3000</p>
                        <p class="catalog-item-price">22 500 Р.</p>
                        <p class="catalog-item-discount">15 500 Р.</p>
                    </div>
                    <div class="catalog-item new-item">
                        <figure class="catalog-item-image">
                            <img src="img/catalog-item-bfg-6000.jpg" width="218" height="169" alt="Перфоратор BOSCH BFG 6000">
                        </figure>
                        <div class="catalog-item-buttons">
                            <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                            <a href="#" class="catalog-button catalog-item-bookmark">В закладки</a>
                        </div>
                        <p class="catalog-item-vendor">Перфоратор BOSCH</p>
                        <p class="catalog-item-model">BFG 6000</p>
                        <p class="catalog-item-price">30 500 Р.</p>
                        <p class="catalog-item-discount">25 500 Р.</p>
                    </div>
                    <div class="catalog-item">
                        <figure class="catalog-item-image">
                            <img src="img/catalog-item-bfg-2000.jpg" width="218" height="169" alt="Перфоратор BOSCH BFG 2000">
                        </figure>
                        <div class="catalog-item-buttons">
                            <a href="#" class="catalog-button catalog-item-buy">Купить</a>
                            <a href="#" class="catalog-button catalog-item-bookmark">В закладки</a>
                        </div>
                        <p class="catalog-item-vendor">Перфоратор BOSCH</p>
                        <p class="catalog-item-model">BFG 2000</p>
                        <p class="catalog-item-discount">12 500 Р.</p>
                    </div>
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
    <div class="perforators">
        <h2 class="perforators-title container">Пара слов о перфораторах</h2>
        <p class="perforators-about container">Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.</p>
    </div>
@endsection