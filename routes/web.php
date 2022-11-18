<?php

use App\Http\Controllers\Crud;
use Illuminate\Support\Facades\Route;

Route::get('/',[Crud::class,'inicio'])->name('vista-inicio');
Route::get('/registrar-persona',[Crud::class,'registro'])->name('vista-registro');
Route::post('/store-personas',[Crud::class,'store'])->name('store-persona');
Route::get('/editar-persona/{id}',[Crud::class,'edit'])->name('editar-registro');
Route::put('/actualizar-persona/{id}',[Crud::class,'update'])->name('update-persona');
Route::delete('/eliminar-registro/{id}',[Crud::class,'destroy'])->name('eliminar-persona');