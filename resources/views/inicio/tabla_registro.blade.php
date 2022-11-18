<div class="card">
    <div class="card-body">
        <h5 class="card-title text-center">REGISTROS</h5>
        <p class="card-text">
            <table class="table table-dark table-borderless table-responsive-sm">
                <thead>
                    <tr>
                        <th scope="col">Nombre animal</th>
                        <th scope="col">Tipo habitad</th>
                        <th scope="col">Localizacion</th>
                        <th scope="col">Peligro de extincion</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($animales as $item)
                    <tr>
                        <th class="text-center">{{ $item->nombre_animal }}</th>
                        <th class="text-center">{{ $item->tipo_habitad }}</th>
                        <th class="text-center">{{ $item->localizacion }}</th>
                        <th class="text-center">{{ $item->extincion }}</th>
                        <th class="text-center"><a href="{{ route('editar-animal', ['id'=>$item->id]) }}" class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i></a></th>
                        <th class="text-center"><a href="{{ route('eliminar-animal', ['id'=>$item->id]) }}" class="btn btn-danger"><i class="fa-solid fa-delete-left"></i></a></th>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </p>
    </div>
</div>
