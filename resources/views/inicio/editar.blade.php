@extends('layouts/main')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card" >
                    <div class="card-body">
                        <h5 class="card-title">Animales</h5>
                        <p class="card-text">
                            <form action="{{ route('actualizar-animal', ['id'=>$animal->id]) }}" method="post">
                                @csrf
                                @method('PUT')
                                <div class="form-floating mb-2">
                                    <input type="text" class="form-control" id="floatingInputValue" name="nombre" placeholder="name@example.com" value="{{ $animal->nombre_animal }}">
                                    <label for="floatingInputValue">Nombre</label>
                                </div>
                                <div class="form-floating mb-2">
                                    <input type="text" class="form-control" id="floatingInputValue" name="habitad" placeholder="name@example.com" value="{{ $animal->tipo_habitad }}">
                                    <label for="floatingInputValue">Tipo habitad</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingInputValue" name="localizacion" placeholder="name@example.com" value="{{ $animal->localizacion }}">
                                    <label for="floatingInputValue">Localizacion</label>
                                </div>
                                <div class="btn-group mb-2" role="group" aria-label="Basic radio toggle button group">
                                    @if ($animal->extincion == 'si')
                                    <label for="">Peligo de extincion: &nbsp;</label>
                                    <input type="radio" value="si" checked class="btn-check" name="extincion" id="btnradio1" autocomplete="off">
                                    <label class="btn btn-outline-danger" for="btnradio1">Si</label>
                                
                                    <input type="radio" value="no" class="btn-check" name="extincion" id="btnradio2" autocomplete="off">
                                    <label class="btn btn-outline-primary" for="btnradio2">No</label>
                                    @else
                                    <label for="">Peligo de extincion: &nbsp;</label>
                                    <input type="radio" value="si" class="btn-check" name="extincion" id="btnradio1" autocomplete="off">
                                    <label class="btn btn-outline-danger" for="btnradio1">Si</label>
                                
                                    <input type="radio" value="no" checked class="btn-check" name="extincion" id="btnradio2" autocomplete="off">
                                    <label class="btn btn-outline-primary" for="btnradio2">No</label>
                                    @endif
                                </div>
                                <hr>
                                <div class="text-center col-md-12">
                                    <button class="btn btn-success">Guardar</button>
                                </div>
                            </form>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection