@extends('layouts/main')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                @include('inicio/form_registro')
            </div>
            <div class="col-md-8">
                @include('inicio/tabla_registro')
            </div>
        </div>
    </div>
@endsection