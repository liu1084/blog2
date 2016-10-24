@extends('layouts.app')

@section('content')
    <div>
        <h2>create a new post</h2>
        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form method="post" action="/articles/store" autocomplete="off">
            <div>
                <label for="title">title</label>
                <input id="title" name="title" type="text" value="" />
            </div>
            <div>
                <label for="content">content</label>
                <textarea id="content" name="content"></textarea>
            </div>
            <div>
                <label>status</label>
                <input id="publish" type="radio" name="status" value="publish" checked/>
                <label for="publish">publish</label>
                <input id="draft" type="radio" name="status" value="draft"/>
                <label for="draft">draft</label>
                <input id="private" type="radio" name="status" value="private"/>
                <label for="private">private</label>
            </div>
            <div>
                <label for="password">password</label>
                <input id="password" type="password" value="" />
            </div>
            <div>
                <label for="sticky">sticky on top</label>
                <input id="sticky" type="checkbox"/>
            </div>
            <div>
                <label for="parent">parent</label>
                <input id="parent" type="checkbox" value="" />
            </div>
            <div>
                <label for="comment_status">comment for the article</label>
                <input id="comment_status" name="comment_status" type="checkbox" value="open" checked />
            </div>
            <input type="hidden" name="_token" value="{{csrf_token()}}"/>
            <input type="submit" value="submit" />
        </form>
    </div>
@endsection
<script src="/bower_components/tinymce/tinymce.min.js"></script>
<script src="/bower_components/tinymce/tinymce.jquery.min.js"></script>
<script src="/js/article/create.js"></script>