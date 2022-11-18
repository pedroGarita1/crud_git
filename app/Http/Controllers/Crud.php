<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Crud extends Controller
{
    public function inicio (){
        $titulo = 'Home';
        return view('inicio', compact('titulo','animales'));
    }
}
