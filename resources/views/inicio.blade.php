@extends('layouts/main')
@section('content')
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-12 mb-3">
                <div class="d-grid gap-2">
                    <a href="{{ route('vista-registro') }}" class="btn btn-primary" type="button">Registrar Persona</a>
                </div>
            </div>
            <div class="col-md-12">
                @include('inicio/tabla_registro')
            </div>
        </div>
    </div>
@endsection