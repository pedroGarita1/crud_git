<?php

namespace App\Http\Controllers;

use App\Models\TPersona;
use Illuminate\Http\Request;

class Crud extends Controller
{
    public function inicio (){
        $titulo = 'Inicio';
        $persona = TPersona::all();
        return view('inicio', compact('titulo','persona'));
    }
    public function registro(){
        $titulo = 'Inicio';
        return view('registro', compact('titulo'));
    }
    public function store (Request $request){
        $persona = new TPersona();
        $persona->nombre = $request->nombre;
        $persona->paterno = $request->paterno;
        $persona->materno = $request->materno;
        $persona->fecha_nacimiento = $request->fecha_nacimiento;
        $persona->genero = $request->tipo_sexo;
        $persona->descripcion = $request->descripcion;
        $persona->save();
        return redirect()->route('vista-inicio');
    }
    public function edit ($id){
        $titulo = 'Editar registro';
        $persona = TPersona::find($id);
        return view('editar', compact('titulo','persona','id'));
    }
    public function update(Request $request, $id){
        $persona = TPersona::find($id);
        $persona->nombre = $request->nombre;
        $persona->paterno = $request->paterno;
        $persona->materno = $request->materno;
        $persona->fecha_nacimiento = $request->fecha_nacimiento;
        $persona->genero = $request->tipo_sexo;
        $persona->descripcion = $request->descripcion;
        $persona->save();
        return redirect()->route('vista-inicio');
    }
    public function destroy ($id){
        $persona = TPersona::find($id);
        $persona->delete();
        return redirect()->route('vista-inicio');
    }
}
