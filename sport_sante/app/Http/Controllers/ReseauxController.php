<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\reseaux;

class ReseauxController extends Controller
{
    

    public function show()
    {
        if(isset($_GET)){
            $i = $_GET["methode_trie"];
            //var_dump($i);

            switch ($i) {
            case $i == 1:
                return $this->trie_alphabetique();
                break;
            case $i == 2:
                return $this->date_ajout();
                break;
            //option a rajouter plus tard    
            // case $i == 3:
            //     return $this->localisation();
            //     break;
            }
        }
        else{
            date_ajout();
        }
    }




    public function trie_alphabetique()
    {
        $reseaux = reseaux::orderBy('name', 'asc')
               ->get();
        return view('reseaux', compact("reseaux"));
    }



    public function date_ajout()
    {
        $reseaux = reseaux::all();
        return view('reseaux', compact("reseaux"));
        // return view('reseaux', [
        //     "reseaux" => $reseaux
        // ]);
    }
  
}
?>