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

Route::get('Accueil', 'AccueilController@show')->name('nameAccueil');

Route::get('activite', 'activiteController@show')->name('nameActivites');

Route::get('biip', 'activiteController@biip')->name('nameActivites');

Route::get('Partenaires', 'PartenairesController@show')->name('namePartenaires');

Route::get('Mentionslegales', 'mentionsLegalesController@show')->name('nameMentionsLegales');

Route::get('Localisation', 'mapController@show')->name('nameLocalisation');

Route::get('reseaux', 'ReseauxController@show')->name('nameReseaux');

Route::get('demarche', 'demarcheController@show')->name('nameDemarche');
