@extends('layouts.app')

@section('content')
    <div>
        <h2>create a new post</h2>
        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li class="error warning">{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form method="post" action="/articles/store" autocomplete="off">
            {{csrf_field()}}
            <ul>
                <li>
                    <label for="title">title</label>
                    <input id="title" name="title" type="text" value=""/>
                </li>
                <li>
                    <label for="content">content</label>
                    <textarea id="content" name="content"></textarea>
                </li>
                <li>
                    <label>status</label>
                    <input id="publish" type="radio" name="status" value="publish" checked/>
                    <label for="publish">publish</label>
                    <input id="draft" type="radio" name="status" value="draft"/>
                    <label for="draft">draft</label>
                    <input id="private" type="radio" name="status" value="private"/>
                    <label for="private">private</label>
                </li>
                <li>
                    <label for="password">password</label>
                    <input id="password" type="password" value=""/>
                    <dd class="jim-icon jim-icon-eye"></dd>
                    <label for="repeat-password">password</label>
                    <input id="repeat-password" type="password" value=""/>
                </li>
                <li>
                    <label for="sticky">sticky on top</label>
                    <input id="sticky" type="checkbox"/>
                </li>
                <li>
                    <label for="parent">parent</label>
                    <input id="parent" type="checkbox" value=""/>
                </li>

                <li>
                    <label for="comment_status">can be comment for the article</label>
                    <input id="comment_status" name="comment_status" type="checkbox" value="open" checked/>
                </li>
                <li>
                    <input type="submit" value="submit"/>
                </li>
            </ul>
        </form>
    </div>
@endsection

@section('js')
<script src="/bower_components/tinymce/tinymce.min.js"></script>
<script src="/bower_components/tinymce/tinymce.jquery.min.js"></script>
<script src="/js/create.js"></script>
@endsection