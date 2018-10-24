@extends('template')

@section('titre')
    Les fiches
@endsection

@section('contenu')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/app_demarche.js"></script>

<?php
    

    try {
        $db =new PDO('mysql:host=localhost;dbname=sport_sante;charset=utf8', 'admin', 'azerty');
    }
    catch(Exception $e)
    {
        die('Erreur : ' . $e->getMessage());
    }

    $reponse = $db->query('SELECT * FROM Image');
    while($donnees=$reponse->fetch()){
        //echo '<div>' . $donnees['description'] . '</div>';
        echo '<body id="style" style="background-image:url(' . $donnees['description'] . ');background-repeat: no-repeat;background-size:cover;"> ' . '</body>';
       // echo '<body id="okok"></body>';
    }
?>    

@endsection
