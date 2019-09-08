<div class="map container">
    <noscript>
        <figure>
            <img src="img/map.jpg" width="940" height="447" alt="Мы на карте">
        </figure>
    </noscript>
    <div class="map-script"></div>
    <a href="#" class="map-close"></a>
</div>
<div class="feedback container">
    <a href="#" class="feedback-close"></a>
    <form action="/feedback" method="post">
        <div class="feedback-userdata">
            <div class="feedback-block clearfix">
                <div class="feedback-left-column">
                    <label class="feedback-data" for="feedback-login">Ваше имя:</label>
                    <input type="text" name="login" id="feedback-login" placeholder="Представьтесь, пожалуйста">
                </div>
                <div class="feedback-right-column">
                    <label class="feedback-data" for="feedback-email">Ваш e-mail:</label>
                    <input type="email" name="email" id="feedback-email" placeholder="Для отправки ответа" required>
                </div>
            </div>
            <label class="feedback-data" for="feedback-textarea">Текст письма:</label>
            <textarea name="text" id="feedback-textarea" placeholder="В свободной форме" required rows="5"></textarea>
        </div>
        <div class="feedback-block-buttons">
            <button type="submit" class="feedback-btn">Отправить</button>
            <a href="#" class="feedback-btn feedback-cancel">Отмена</a>
        </div>
    </form>
</div>
<div class="cart-notification">
    <a href="#" class="cart-notification-close"></a>
    <form action="/cart" method="post">
        <p class="cart-notification-title">Товар добавлен в корзину!</p>
        <div class="cart-notification-decision">
            <button type="submit" class="cart-order-btn">Оформить заказ</button>
            <a href="#" class="cart-cancel-btn">Продолжить покупки</a>
        </div>
    </form>
</div>