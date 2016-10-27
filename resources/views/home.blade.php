@extends('layouts.app')
@if (Route::has('login'))
    <ul class="top-link">
        <li><a href="{{ url('/login') }}">Login</a></li>
        <li><a href="{{ url('/register') }}">Register</a></li>
    </ul>
@endif

@section('css')
    {{--<link href="/bower_components/wookmark/css/main.css" rel="stylesheet"/>--}}
@endsection

@section('content')
    <div id="articles">
        <ul>
            <article-item v-for="article in articles" v-bind:article="article"></article-item>
        </ul>
    </div>
    <div id="app-7">
        <ol>
            <!--
            Now we provide each todo-item with the todo object
            it's representing, so that its content can be dynamic
            -->
            <todo-item v-for="todo in todos" v-bind:todo="todo"></todo-item>
        </ol>
    </div>
@endsection

@section('js')
    <script src="/bower_components/wookmark/wookmark.min.js"></script>
    <script src="/js/home.js"></script>
@endsection
