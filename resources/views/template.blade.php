<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>@yield('title')</title>
    <meta name="description" content="@yield('description')">
    <meta name="keywords" content="материалы, инструменты, техника, перфораторы, дрели, bosch, makita, dewalt, интерскол, hitachi, lg, aeg, metabo">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}" type="text/css">
    <link rel="icon" href="{{ asset('img/favicon.ico') }}" type="image/ico">
    <!-- Yandex.Metrika counter -->
    <script type="text/javascript" >
        (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
            m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
        (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

        ym(49114531, "init", {
            id:49114531,
            clickmap:true,
            trackLinks:true,
            accurateTrackBounce:true,
            webvisor:true
        });
    </script>
    <noscript><div><img src="https://mc.yandex.ru/watch/49114531" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
    <!-- /Yandex.Metrika counter -->
</head>

<body>
<header class="header-panel header-main">
    <i class="fa fa-address-book" aria-hidden="true"></i>
    @include('front.partials.header')
</header>
    @yield('content')
<footer>
    @include('front.partials.footer')
</footer>
    @include('front.partials.notifications')

<script src="http://maps.googleapis.com/maps/api/js?v=3&amp;sensor=false">
</script>

<script src="{{ asset('js/script.min.js') }}"></script>
</body>

</html>