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
    return view('partials.home');
});

Route::get('/fotografie', function () {
    return view('partials.fotografie');
});

Route::get('/webdesign', function () {
    return view('partials.webdesign');
});

Route::get('/over', function () {
    return view('partials.over');
});

Route::get('/contact', function () {
    return view('partials.contact');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
