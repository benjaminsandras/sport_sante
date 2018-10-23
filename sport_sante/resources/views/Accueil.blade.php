<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- <link rel="stylesheet" href="node_modules/framework7/css/framework7.min.css"> -->
        <link rel="stylesheet" href="{{ asset('css/AccueilStyle.css') }}">
        <link rel="stylesheet" href="{{ asset('node_modules/framework7/css/framework7.min.css') }}">
        <link rel="stylesheet" href="{{ asset('node_modules/framework7/css/framework7-icons-master/css/framework7-icons.css') }}">

        <title>PageAccueil</title>
    </head>
    
    <body>

        <div class="pageContent"> 
            
            <div class="right">
                <a class="link popover-open" href="#" data-popover=".popover-links">
                    <i class="icon f7-icons color-black">menu</i>
                </a>
            </div>

            <div class="popover popover-links">
                <div class="popover-inner">
                    <div class="list">
                        <ul>
                        <li><a class="list-button item-link" href="#">Liens</a></li>
                        <li><a class="list-button item-link" href="{{ url('activite')}}">Partenaires</a></li>
                        <li><a class="list-button item-link" href="#">Mentions légales</a></li><br>
                        <a href="#" style="display:inline-block" class="button button-to-popover">close</a>
                        </ul>
                    </div>
                </div>
            </div>

        
            <div id="button">  
                <form action='activite' method='GET'>
                    <p class="row">
                        <button class="col button button-fill color-green">Activités</button>
                    </p>
                </form>

                <form action='secteur'method='GET'>
                    <p class="row">
                        <button class="col button button-fill color-orange">Secteur</button>   
                    </p>
                </form>

                <form action='Réseaux'method='GET'>
                    <p class="row">
                        <button class="col button button-fill color-red">Réseaux</button>
                    </p>
                </form>

                <form action='Démarches'method='GET'>
                    <p class="row">
                        <button class="col button button-fill color-blue">Démarches</button>
                    </p>
                </form>
                
            </div> 

        </div>


        <script type="text/javascript" src="node_modules/framework7/js/framework7.min.js"></script>
        <script type="text/javascript" src="js/f7app.js"></script>

    </body>
</html>