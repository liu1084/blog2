<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=0">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="/css/app.css" rel="stylesheet">

    <!-- Scripts -->
    <script>
        window.Laravel = <?php echo json_encode([
                'csrfToken' => csrf_token(),
        ]); ?>
    </script>
</head>
<body>

@yield('content')

<!-- Common Scripts -->
<script src="/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/bower_components/handlebars/handlebars.min.js"></script>
<script src="/bower_components/highlight/src/highlight.js"></script>
<script src="/bower_components/PACE/pace.min.js"></script>
<script src="/bower_components/sugar/dist/sugar.min.js"></script>
<script src="/js/app.js"></script>

<!-- Current Page Scripts -->
@yield('script')
</body>
</html>
