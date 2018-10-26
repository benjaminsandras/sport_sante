<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

            <link rel="stylesheet" href="css/leaflet.css" />
            <link rel="stylesheet" href="css/map.css">
            <script src="js/leaflet.js"></script>
</head>
<body id="maCarte">
    
<div style="height: 1000px;"></div>
            
            <script>
                var maCarte = L.map('maCarte').setView([43.650000,0.583333], 7);
            </script>
                    <?php 
                        try {
                            $db =new PDO('mysql:host=localhost;dbname=sport_sante;charset=utf8', 'admin', 'azerty');
                        }
                        catch(Exception $e)
                        {
                            die('Erreur : ' . $e->getMessage());
                        }
    
                        $reponse = $db->query('SELECT * FROM Club ');
                        while($donnees=$reponse->fetch()){
                            echo '<script type="text/javascript"> var marker = L.marker(' . $donnees['coordonnee'] . ' ).addTo(maCarte);</script>' ;
                        }
                    ?>
                    
            <script>
                
                L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 19,
                attribution: ' <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
                }).addTo(maCarte);
            </script>


</body>
</html>
