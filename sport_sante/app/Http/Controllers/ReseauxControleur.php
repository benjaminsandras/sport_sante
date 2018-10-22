<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\reseaux;

class ReseauxControleur extends Controller
{
    public function show()
    {
    	$reseaux = reseaux::all();
        return view('reseaux', compact("reseaux"));
    }

    
}
?>