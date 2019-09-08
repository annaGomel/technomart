@extends('template')

@section('content')
    <main class="container">
        <form action="/post-users" method="POST">
            @csrf
            <div class="form-group">
                <select name="users" id="">
                    <option value="ChDickens">ChDickens</option>
                </select>
                <button type="submit">Получить</button>
            </div>
        </form>
    </main>
@endsection