@extends('template')

@section('content')
    <main>
        <section class="offer container clearfix">
            @foreach($categories as $category)
                <div class="offer-item offer-{{ $category->slug }}">
                    <p class="offer-item-type">{{ $category->title }}</p>
                    <a href="{{ route('product.list', $category->slug) }}" class="offer-item-info">На любой вкус</a>
                </div>
            @endforeach
        </section>
        <section class="offer-slider bottom-offer container clearfix">
            <div class="offer-slider-block">
                <input name="offer-slider-controlls" class="offer-slider-drill" type="radio" id="offer-slider-drill" checked>
                <label for="offer-slider-drill"></label>
                <input name="offer-slider-controlls" class="offer-slider-perforator" type="radio" id="offer-slider-perforator">
                <label for="offer-slider-perforator"></label>
                <label class="offer-left-arrow" for="offer-slider-drill"></label>
                <label class="offer-right-arrow" for="offer-slider-perforator"></label>
                <div class="offer-slider-items clearfix">
                    <div class="offer-slider-item offer-slider-perforators">
                        <div class="offer-slider-header">
                            <p class="offer-slider-title">Дрели</p>
                            <p class="offer-slider-info">Соседям на радость!</p>
                        </div>
                        <a href="#" class="slider-btn">Открыть каталог</a>
                    </div>
                    <div class="offer-slider-item offer-slider-drills">
                        <div class="offer-slider-header">
                            <p class="offer-slider-title">Перфораторы</p>
                            <p class="offer-slider-info">Настоящие мужские игрушки</p>
                        </div>
                        <a href="catalog.html" class="slider-btn">открыть каталог</a>
                    </div>
                </div>
            </div>
            <div class="offer-block">
                <div class="offer-item offer-discount">
                    <p class="offer-item-type">Скидки 50%</p>
                    <a href="#" class="offer-item-info">На 350 товаров</a>
                </div>
                <div class="offer-item offer-delivery">
                    <p class="offer-item-type">Доставка</p>
                    <a href="#" class="offer-item-info">Бесплатно</a>
                </div>
            </div>
        </section>
        <section class="popular container clearfix">
            <p class="popular-text">Популярные товары:</p>
            <a href="" class="popular-btn">Все популярные товары</a>
        </section>
        <section class="catalog-popular container clearfix">
            @foreach($products as $product)
                <div class="catalog-item {{ $product->is_new == 1 ? 'new-item' : '' }}">
                    <figure class="catalog-item-image">
                        <img src="{{ asset('img') . '/' . $product->image }}" width="218" height="169" alt="Перфоратор Bosch BFG 9000">
                    </figure>
                    <div class="catalog-item-buttons">
                        <a href="{{ route('add.to.cart', ['id' => $product->id]) }}" role="button" style="font-size: 16px;">Купить</a>
                        <a href="{{ route('show.product', $product->slug) }}" class="catalog-button catalog-item-bookmark">Подробнее</a>
                    </div>
                    <p class="catalog-item-vendor">{{ $product->title }}</p>
                    <p class="catalog-item-model">{{ $product->model }}</p>
                    <p class="catalog-item-price" style="height: 27px;">{{ $product->old_price ? $product->old_price : '' }}</p>
                    <p class="catalog-item-discount">{{ $product->price }}</p>
                </div>
            @endforeach
        </section>
        <section class="popular container clearfix">
            <p class="popular-text">Популярные производители:</p>
            <a href="#" class="popular-btn">Все производители</a>
        </section>
        <section class="brands container clearfix">
            @foreach($manufacturers->take(8) as $manufacturer)
                <a href="{{ asset('img') . '/' . $manufacturer->image }}" class="brands-logo">
                    <img src="{{ asset('img') . '/' . $manufacturer->image }}" width="218" height="145" alt="{{ $manufacturer->title }}">
                </a>
            @endforeach
        </section>
        <section class="service">
            <div class="container">
                <div class="service-intro">
                    <h2 class="service-title">Сервисы</h2>
                    <p class="service-title-info">Хороший интернет-магазин отличается от плохого не только ценами!</p>
                    <p class="service-title-info">Мы стараемся изо всех сил чтобы сделать ваши покупки приятными.</p>
                </div>
                <div class="service-columns clearfix">
                    <div class="left-column service-list-column">
                        <ul>
                            <li>
                                <a href="#" class="service-list-active">Доставка</a>
                            </li>
                            <li>
                                <a href="#">Гарантия</a>
                            </li>
                            <li>
                                <a href="#">Кредит</a>
                            </li>
                        </ul>
                    </div>
                    <div class="right-column service-details-column">
                        <section class="service-details-block service-details-delivery service-details-active">
                            <h2 class="service-details-title">Доставка</h2>
                            <p class="service-details-info service-delivery-info">Мы с одовольствием доставим ваш товар прямо к вашему подьезду совершенно бесплатно!</p>
                            <p class="service-details-info service-delivery-info">Ведь мы неплохо заработаем поднимая его на ваш этаж.</p>
                        </section>
                        <section class="service-details-block service-details-warrianty">
                            <h2 class="service-details-title">Гарантия</h2>
                            <p class="service-details-info service-warrianty-info">Если купленный у нас товар поломается или заискрит, а также в случае пожара, спровоцированного его возгаранием, вы всегда можете быть уверены в нашей гарантии. Мы обменяем сгоревший товар на новый.</p>
                            <p class="service-details-info service-warrianty-info">Дом уж восстановите как-нибудь сами.</p>
                        </section>
                        <section class="service-details-block service-details-credit">
                            <h2 class="service-details-title">Кредит</h2>
                            <p class="service-details-info service-credit-info">Залезть в долговую яму стало проще!</p>
                            <p class="service-details-info service-credit-info">Кредитные консультанты придут вам на помощь.</p>
                            <a href="#" class="service-btn">Отправить заявку</a>
                        </section>
                    </div>
                </div>
            </div>
        </section>
        <section class="company container clearfix">
            <section class="left-column company-promo-column">
                <h2 class="company-promo-title">«Компания Техномарт»</h2>
                <p class="company-promo-info">Настоящий мужской шоппинг начинается здесь! Огромный выбор товаров для ремонта и строительства не оставит равнодушными любителей сэкомномть на гастарбайтерах.</p>
                <p class="company-promo-info">Мы можем доставить товар в самые отдаленные точки России! Техномарт работает со многими транспортными компаниями:</p>
                <ul class="company-promo-list">
                    <li>Деловые Линии</li>
                    <li>Автотрейдинг</li>
                    <li>ЖелДорЭкспедиция</li>
                </ul>
                <a href="#" class="company-about-btn">Подробнее о компании</a>
            </section>
            <section class="right-column company-contacts-column">
                <h2 class="company-contacts-title">Контакты</h2>
                <p class="company-contacts-info">Вы можете забрать товар сами, заехав в наш офис:</p>
                <a href="img/company-contacts-map.jpg" class="company-contacts-map">
                    <img src="img/company-contacts-map.jpg" width="300" height="160" alt="Мы на карте">
                </a>
                <a href="#" class="company-feedback-btn">Заблудились? Напишите нам!</a>
            </section>
        </section>
    </main>
@endsection