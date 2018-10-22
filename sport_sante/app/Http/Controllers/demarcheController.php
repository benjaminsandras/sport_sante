<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\demarche;


class demarcheController extends Controller
{
   public function show ()
    {
        $demarches=demarche::all();
        return view('demarche', compact('demarches'));
    } 
}
