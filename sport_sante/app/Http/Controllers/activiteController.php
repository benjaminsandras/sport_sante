<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\activite;


class activiteController extends Controller
{
    public function show(){

    	$activites=Activite::all();
        return view('activite', compact('activites'));
	}

	public function biip($nom){
		$activites = Activite::where('nom',$nom)->get();
		return view('activite', compact('activites'));
	}

}

