<?php

Route::get('/', function () {
    return redirect('/login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/customers', 'HomeController@create')->name('user.create');

Route::post('/customers', 'HomeController@store')->name('user.store');

 Route::delete('/customers/{customer}', 'HomeController@destroy')->name('user.delete');

 Route::get('/customers/{customer}/edit', 'HomeController@edit')->name('user.edit');

 Route::patch('/customers/{customer}/update', 'HomeController@update')->name('user.update');

 Route::get('/customers/{customer}', 'HomeController@show' )->name('user.show');

 Route::patch('/actvity/{id}', 'HomeController@updateActivity' )->name('activity.update');

 Route::delete('/actvity/{id}', 'HomeController@deleteActivity' )->name('activity.delete');