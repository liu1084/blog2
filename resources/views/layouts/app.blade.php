<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=0">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="base" content="{{route('base')}}">
    <title>@yield('title')</title>

    <!-- Styles -->
    <link href="/bower_components/normalize-css/normalize.css" rel="stylesheet"/>
    <link href="/bower_components/highlight/src/styles/github-gist.css" rel="stylesheet"/>
    <link href="/bower_components/PACE/themes/black/pace-theme-minimal.css" rel="stylesheet"/>
    <link href="/bower_components/tinymce/skins/lightgray/skin.min.css" rel="stylesheet"/>
    <!-- Current Page css-->
    @yield('css')
</head>
<body>

<header class="header">
    <ul>
        <li class="logo blog"></li>
        <li>Home</li>
        <li>Lasted</li>
        <li>News</li>
        <li>Categories</li>
        <li>Explore</li>
        <li>Support</li>
        <li>
            <input type="text" value="" placeholder="Search post"/>
            <button>Search</button>
        </li>
        <li>
            <button>Sign in</button>
        </li>
        <li>
            <button>Sign up</button>
        </li>
    </ul>
</header>

@yield('content')

<footer class="footer">
    <ul>
        <li>About me</li>
        <li>Email to</li>
        <li>Help</li>
    </ul>
</footer>

<!-- Common Scripts -->
<script src="/bower_components/vue/dist/vue.js"></script>
<script src="/bower_components/handlebars/handlebars.min.js"></script>
<script src="/bower_components/handlebars/handlebars.min.js"></script>
<script src="/bower_components/highlight/src/highlight.js"></script>
<script src="/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/bower_components/PACE/pace.min.js"></script>
<script src="/bower_components/sugar/dist/sugar.min.js"></script>

<!-- Current Page Scripts -->
@yield('js')
</body>
</html>
