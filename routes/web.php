<?php

use App\Http\Controllers\Crud;
use Illuminate\Support\Facades\Route;

Route::get('/',[Crud::class,'inicio'])->name('vista-inicio');
