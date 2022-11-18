@extends('layouts/main')
@section('content')
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Registrar Personas</h5>
                        <p class="card-text">
                            <form action="{{ route('store-persona') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputValue" name="nombre" placeholder="Nombre de la persona">
                                            <label for="floatingInputValue">Nombre de la persona</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputValue" name="paterno" placeholder="Apellido Paterno">
                                            <label for="floatingInputValue">Apellido Paterno</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputValue" name="materno" placeholder="Apellido Materno">
                                            <label for="floatingInputValue">Apellido Materno</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                            <input type="date" class="form-control" id="floatingInputValue" name="fecha_nacimiento" placeholder="Fecha Nacimiento">
                                            <label for="floatingInputValue">Fecha Nacimiento</label>
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-3">
                                        <label for="">Genero</label>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input checks-sexo" value="hombre" type="radio" name="tipo_sexo" id="sexo_hombre">
                                                    <label class="form-check-label" for="flexSwitchCheckDefault">Hombre</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input checks-sexo" value="mujer" type="radio" name="tipo_sexo" id="sexo_mujer">
                                                    <label class="form-check-label" for="flexSwitchCheckDefault">Mujer</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input checks-sexo" value="otro" type="radio" name="tipo_sexo" id="sexo_otro">
                                                    <label class="form-check-label" for="flexSwitchCheckDefault">Otro</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-3">
                                        <div class="form-floating">
                                            <textarea class="form-control" name="descripcion" id="floatingTextarea"></textarea>
                                            <label for="floatingTextarea">Descripcion</label>
                                        </div>
                                    </div>
                                    <div class="d-grid gap-2">
                                        <button class="btn btn-primary">Registrar</button>
                                    </div>
                                </div>
                            </form>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection