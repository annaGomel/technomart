@extends('template')

@section('title', $page->title)

@section('content')
    <main class="container">
        <h1>{{ $page->title }}</h1>
        <p class="description" style="padding-bottom: 50px;">{!! $page->content !!}</p>
    </main>
@endsection