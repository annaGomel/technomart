@extends('template')

@section('content')

    <main class="container" style="padding-bottom: 60px;">
        @if(Session::has('cart'))
            <!-- https://megakassa.ru -->
            {{--<h2>Вы заказали на сумму: {{ $cart->totalPrice }}</h2>--}}
            {{--<div class="feedback-block">--}}
                {{--<form action="{{ route('checkout.form') }}" method="POST">--}}
                    {{--{{ csrf_field() }}--}}
                    {{--<input type="text" value="Имя" name="name">--}}
                    {{--<br>--}}
                    {{--<input type="text" value="Телефон" name="phone">--}}
                    {{--<br>--}}
                    {{--<input type="text" value="E-mail" name="email">--}}
                    {{--<input type="submit" value="Заказть">--}}
                {{--</form>--}}
            {{--</div>--}}

                <div class="feedback-block">
                    <form action="{{ route('get.user') }}" method="POST">
                        {{ csrf_field() }}
                        <label for="">Выбрать пользователя</label>
                        <select name="ipadress" id="">
                            <option value="134.201.250.155">134.201.250.155</option>
                        </select>
                        <input type="submit" value="Получить столицу">
                    </form>
                </div>


        @else

            <p>Продуктов нет в корзине</p>

        @endif
    </main>

@endsection