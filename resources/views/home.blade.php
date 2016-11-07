@extends('layouts.app')
@section('css')
    <link rel="stylesheet" href="css/home.css"/>
@endsection

@section('content')
    <div class="main">
        <ul id="articles">
            <li is="article-item" v-for="article in articles" v-bind:article="article"></li>
        </ul>
    </div>
@endsection

@section('js')
    <script src="/bower_components/wookmark/wookmark.min.js"></script>
    <script src="/js/home.js"></script>
@endsection
