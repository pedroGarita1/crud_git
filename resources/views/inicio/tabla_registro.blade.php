<table class="table table-striped table-hover table-bordered table-sm table-responsive-sm">
    <thead>
        <tr>
            <th scope="col">Apellido Paterno</th>
            <th scope="col">Apellido Materno</th>
            <th scope="col">Nombre Persona</th>
            <th scope="col">Edad persona</th>
            <th scope="col">Genero</th>
            <th scope="col">Descripcion</th>
            <th scope="col">Editar</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($persona as $item)
        @php
            $nacimiento = new DateTime($item->fecha_nacimiento);
            $ahora = new DateTime(date('Y-m-d'));
            $diferencia = $ahora->diff($nacimiento)
        @endphp
        <tr>
            <th scope="row">{{ $item->paterno }}</th>
            <td>{{ $item->materno }}</td>
            <td>{{ $item->nombre }}</td>
            <td>{{ $diferencia->format('%y') }} años</td>
            <td>{{ $item->genero }}</td>
            <td>{{ $item->descripcion }}</td>
            <td><a class="btn btn-primary" href="{{ route('editar-registro', ['id'=>$item->id]) }}"><i class="fa-solid fa-user-pen"></i></a></td>
        </tr>
        @endforeach
    </tbody>
</table>