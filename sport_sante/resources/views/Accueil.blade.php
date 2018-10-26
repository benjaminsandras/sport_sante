<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="{{ asset('node_modules/framework7/css/framework7.min.css') }}">
        <link rel="stylesheet" href="{{ asset('node_modules/framework7/css/framework7-icons-master/css/framework7-icons.css') }}">
        <link rel="stylesheet" href="{{ asset('css/AccueilStyle.css') }}">
        <title>PageAccueil</title>
    </head>
    
    <?php
    

        try {
            
            $db =new PDO('mysql:host=localhost;dbname=sport_sante;charset=utf8', 'admin', 'azerty');
        
        }
        catch(Exception $e)
        {
            die('Erreur : ' . $e->getMessage());
        }

        $reponse = $db->query('SELECT * FROM Image WHERE id=1');
        while($donnees=$reponse->fetch()){
            echo '<body id="style" style="background-image:url(' . $donnees['description'] . ');background-repeat: no-repeat;background-size:cover;background-position: center center;background-attachment: fixed;Z-index: 0"> ' . '</body>';
        }
    ?>    

    <body>

        <div class="pageContent"> 
               
            <div class="right">
                <a class="link popover-open" href="#" data-popover=".popover-links">
                    <i class="icon f7-icons color-black">menu</i>
                </a>
            </div>
                <?php

                    try {
                        
                        $db =new PDO('mysql:host=localhost;dbname=sport_sante;charset=utf8', 'admin', 'azerty');
                    
                    }
                    catch(Exception $e)
                    {
                        die('Erreur : ' . $e->getMessage());
                    }

                    $reponse = $db->query('SELECT * FROM Image WHERE id=2');
                    while($donnees=$reponse->fetch()){
                        echo '<img class="displayed" src=" ' . $donnees['description'] . ' ">';
                    }
                ?>     
            <div class="popover popover-links">
                <div class="popover-inner">
                    <div class="list">
                    

                        <form action="{{ route('namePartenaires') }}" method='GET'>
                            <p class="elevation-hover-20" id="un">
                                <button class="col button button-fill color-orange">Partenaires</button>   
                            </p>
                        </form>

                        <form action="{{ route('nameMentionsLegales') }}" method='GET'>
                            <p class="elevation-hover-20" id="deux">
                                <button class="col button button-fill color-orange">Mentions légales</button>   
                            </p>
                        </form>

                        <form action="{{ route('nameAccueil') }}" method='GET'>
                            <p class="elevation-hover-20" id="trois">
                                <button class="col button button-fill color-orange">Retour accueil</button>   
                            </p>
                        </form>
                        
                    </div>
                </div>
            </div>


        
            <div id="button">  

                <form action='activite' method='GET'>
                    <p class="elevation-hover-20" id="quatre">
                        <button class="col button button-fill color-green">Activités</button>
                    </p>
                </form>

                <form action="{{ route('nameLocalisation') }}" method='GET'>
                    <p class="elevation-hover-20" id="cinq">
                        <button class="col button button-fill color-orange">Localisation</button>   
                    </p>
                </form>

                <form action='reseaux'method='GET'>
                    <p class="elevation-hover-20" id="six">
                        <button class="col button button-fill color-red">Réseaux</button>
                    </p>
                </form>

                <form action='demarche'method='GET'>
                    <p class="elevation-hover-20" id="sept">
                        <button class="col button button-fill color-blue">Démarches</button>
                    </p>
                </form>

            </div> 
        </div>

        <?php

            try {

                $db =new PDO('mysql:host=localhost;dbname=sport_sante;charset=utf8', 'admin', 'azerty');

            }
            catch(Exception $e)
            {
                die('Erreur : ' . $e->getMessage());
            }

            $reponse = $db->query('SELECT * FROM Image WHERE id=3');
            while($donnees=$reponse->fetch()){
                echo '<img class="displayed2" src=" ' . $donnees['description'] . ' ">';
            }
        ?>

        <?php

            try {

                $db =new PDO('mysql:host=localhost;dbname=sport_sante;charset=utf8', 'admin', 'azerty');

            }
            catch(Exception $e)
            {
                die('Erreur : ' . $e->getMessage());
            }

            $reponse = $db->query('SELECT * FROM Image WHERE id=4');
            while($donnees=$reponse->fetch()){
                echo '<img class="displayed3" src=" ' . $donnees['description'] . ' ">';
            }
        ?>
        <script type="text/javascript" src="node_modules/framework7/js/framework7.min.js"></script>
        <script type="text/javascript" src="js/f7app.js"></script>

    </body>
</html>
