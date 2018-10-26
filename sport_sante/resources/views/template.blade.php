<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>@yield('titre')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="node_modules/framework7/css/framework7.min.css">
    <link rel="stylesheet" href="{{ asset('node_modules/framework7/css/framework7-icons-master/css/framework7-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('css/AccueilStyle.css') }}">

</head>
<body id="templateBody">


    <div class="right">
        <a class="link popover-open" href="#" data-popover=".popover-links">
            <i class="icon f7-icons color-black">menu</i>
        </a>
    </div>

            <div class="popover popover-links">
                <div class="popover-inner">
                    <div class="list">

                        <form action='activite' method='GET'>
                            <p class="elevation-hover-15">
                                <button class="col button button-fill color-green">Activités</button>
                            </p>
                        </form>

                        <form action="{{ route('nameLocalisation') }}" method='GET'>
                            <p class="elevation-hover-15">
                                <button class="col button button-fill color-orange">Localisation</button>   
                            </p>
                        </form>

                        <form action='reseaux'method='GET'>
                            <p class="elevation-hover-15">
                                <button class="col button button-fill color-red">Réseaux</button>
                            </p>
                        </form>

                        <form action='demarche'method='GET'>
                            <p class="elevation-hover-15">
                                <button class="col button button-fill color-blue">Démarches</button>
                            </p>
                        </form>

                        <form action="{{ route('namePartenaires') }}" method='GET'>
                            <p class="elevation-hover-15">
                                <button class="col button button-fill color-black">Partenaires</button>   
                            </p>
                        </form>

                        <form action="{{ route('nameMentionsLegales') }}" method='GET'>
                            <p class="elevation-hover-15">
                                <button class="col button button-fill color-black">Mentions légales</button>   
                            </p>
                        </form>

                        <form action="{{ route('nameAccueil') }}" method='GET'>
                            <p class="elevation-hover-15">
                                <button class="col button button-fill color-black">Retour accueil</button>   
                            </p>
                        </form>
                    </div>
                </div>
            </div>

    @yield('contenu')


    <script src="node_modules/framework7/js/framework7.min.js"></script>
    <script src="js/f7app.js"></script>
</body>
</html>
