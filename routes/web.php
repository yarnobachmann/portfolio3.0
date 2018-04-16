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
    $images = App\Image::all();
    return view('partials.fotografie', compact('images'));
});

Route::get('/webdesign', function () {
    $projects = App\Project::all();
    return view('partials.webdesign', compact('projects'));
});

Route::get('/over', function () {
    $about = App\About::firstorFail();
    return view('partials.over', compact('about'));
});

Route::get('/contact', function () {
    $contact = App\Contact::firstorFail();
    return view('partials.contact', compact('contact'));
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
