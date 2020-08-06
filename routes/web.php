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
    return view('auth.login');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/users/view', 'Backend\UserController@view')->name('users.view');

Route::group(['middleware'=>'auth'],function(){
  Route::prefix('users')->group(function(){
    Route::get('/view', 'Backend\UserController@view')->name('users.view');
    Route::get('/add', 'Backend\UserController@add')->name('users.add');
    Route::post('/store', 'Backend\UserController@store')->name('users.store');
    Route::get('/edit/{id}', 'Backend\UserController@edit')->name('users.edit');
    Route::post('/update/{id}', 'Backend\UserController@update')->name('users.update');
    Route::get('/delete/{id}', 'Backend\UserController@delete')->name('users.delete');
  });



  Route::prefix('todo')->group(function(){
    Route::get('/home-task/view', 'Backend\DivisionController@view')->name('todo.home.task.view');
    Route::get('/home-task/add', 'Backend\DivisionController@add')->name('todo.home.task.add');
    Route::post('/home-task/store', 'Backend\DivisionController@store')->name('todo.home.task.store');
    Route::get('/home-task/edit/{id}', 'Backend\DivisionController@edit')->name('todo.home.task.edit');
    Route::post('/home-task/update/{id}', 'Backend\DivisionController@update')->name('todo.home.task.update');
    Route::get('/home-task/delete/{id}', 'Backend\DivisionController@delete')->name('todo.home.task.delete');
  });


});
