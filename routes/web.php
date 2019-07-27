<?php

Route::get('/', function () {
    return redirect('/login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/user', 'HomeController@create')->name('user.create');

Route::post('/user', 'HomeController@store')->name('user.store');

