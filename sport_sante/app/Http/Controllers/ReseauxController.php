<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\reseaux;

class ReseauxController extends Controller
{
    public function show()
    {
    	$reseaux = reseaux::all();
        return view('reseaux', compact("reseaux"));
    	
    }

    public function trie_alphabetique()
    {
    	$reseaux = reseaux::orderBy('name', 'asc')
               ->get();
        return view('reseaux', compact("reseaux"));
    }
  
}
?>