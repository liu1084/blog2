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

    <!-- Common Styles Vendors-->
    <link href="/bower_components/normalize-css/normalize.css" rel="stylesheet"/>
    <link href="/bower_components/highlight/src/styles/github-gist.css" rel="stylesheet"/>
    <link href="/bower_components/PACE/themes/black/pace-theme-minimal.css" rel="stylesheet"/>
    <link href="/bower_components/tinymce/skins/lightgray/skin.min.css" rel="stylesheet"/>

    <!-- Common Styles -->
    <link href="/css/common/header.css" rel="stylesheet" />
    <link href="/css/common/footer.css" rel="stylesheet" />
    <!-- Current Page css-->
    @yield('css')
</head>
<body>

<header class="header">
    <nav>
        <a class="nav-item logo"></a>
        <a class="nav-item">Home</a>
        <a class="nav-item">Lasted post</a>
        <a class="nav-item">News</a>
        <a class="nav-item">Categories</a>
        <a class="nav-item">Explore</a>
        <a class="nav-item">Support</a>
        <a class="nav-item">About me</a>
        <form>
            <input class="search" type="text" placeholder="Search post"/>
            <button class="button sign-in">Sign in</button>
            <button class="button sign-up">Sign up</button>
        </form>
        <a class="nav-item">Login</a>
        <a class="nav-item">Register</a>
    </nav>
</header>

@yield('content')

<footer class="footer">
    <ul>
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
