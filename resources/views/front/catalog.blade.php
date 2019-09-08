@extends('template')

@section('content')

    <main class="container">
        @foreach($categories as $category)
            <p>{{ $category->title }}</p>
        @endforeach
        @foreach($products as $product)
            <p>{{ $product->title }}</p>
        @endforeach
    </main>

@endsection