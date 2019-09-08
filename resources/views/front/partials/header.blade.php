<div class="header-upper-panel">
    <div class="container">
        <a href="#" class="header-upper-logo">Техномарт</a>
        <div class="header-upper-search">
            <form action="{{ route('search') }}" method="post">
                {{ csrf_field() }}
                <input type="search" name="search" id="search" placeholder="Поиск:" required>
                <label for="search"></label>
            </form>
        </div>
        <a href="#" class="header-upper-bookmark">Закладки: 0</a>
        <a href="{{ route('show.cart') }}" class="header-upper-cart">Корзина:
            {{ Session::has('cart') ? Session::get('cart')->totalQty : '0'}}
        </a>
        <a href="{{ route('checkout') }}" class="header-upper-order">Оформить заказ</a>
    </div>
</div>
<div class="container">
    <div class="header-middle-panel clearfix">
        <p class="header-middle-block header-middle-about">Интернет-магазин строительных материалов и инструментов для ремонта</p>
        <div class="header-middle-contacts">
            <p class="header-contacts-telephone">{{ $settings->phone }}</p>
            <p class="header-contacts-address">{{ $settings->address }}</p>
        </div>
        <div class="header-middle-user header-user-connected">
            <a href="#" class="header-user-login">Войти</a>
            <a href="#" class="header-user-registration">Регистрация</a>
        </div>
    </div>
    <nav class="header-bottom-panel">
        @foreach($menus as $item)
            <a href="{{ route('show.page', $item->slug) }}">{{ $item->title }}</a>
        @endforeach
    </nav>
</div>