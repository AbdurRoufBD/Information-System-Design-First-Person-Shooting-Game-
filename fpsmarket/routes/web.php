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
    //return view('welcome');
    return view('home');
});

Route::get('/about', function () {
   return view('about');
});

Route::get('/addproduct', function () {
    //return view('welcome');

    return view('addproduct');
});


Route::post('/addproduct/submit', 'AddProductController@submit');
