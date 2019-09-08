@extends('template')

@section('content')
    <main class="container">
        <h1>{{ $product->title }}</h1>
        <p>{{ $product->price }}</p>
        <p class="description" style="padding-bottom: 50px;">{!! $product->content !!}</p>
    </main>
@endsection