@extends('layouts.app')

@section('content')
    <div class="main" id="articles">
        <ul>
            <article-item v-for="article in articles" v-bind:article="article"></article-item>
        </ul>
    </div>
@endsection

@section('js')
    <script src="/bower_components/wookmark/wookmark.min.js"></script>
    <script src="/js/home.js"></script>
@endsection
