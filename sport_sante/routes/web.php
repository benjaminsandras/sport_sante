<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

<<<<<<< HEAD
// Ici les routes qui servent a afficher les page avec la method show de chaque controller
Route::get('demarche', 'demarcheController@show');
Route::get('localisation', 'localisationController@show');
Route::get('structure', 'structureController@show');
Route::get('activite', 'activiteController@show');
Route::get('biip','activiteController@biip');
	

=======
Route::get('Accueil', 'AccueilController@show');

Route::get('activite', 'AccueilController@PostActivite');
>>>>>>> 20e370fcb221c3661c42e610d32aab48cfccf137

