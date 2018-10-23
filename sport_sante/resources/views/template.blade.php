<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>@yield('titre')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="node_modules/framework7/css/framework7.min.css">

</head>
<body>

    @yield('contenu')


    <button id="back" type="submit" class="col button button-fill color-green">Retourné à l'accueil</button>

    <script src="node_modules/framework7/js/framework7.min.js"></script>
    <script src="js/f7app.js"></script>
</body>
</html>
