<div class="card" >
    <div class="card-body">
        <h5 class="card-title">Animales</h5>
        <p class="card-text">
            <form action="{{ route('guardar-animal') }}" method="post">
                @csrf
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInputValue" name="nombre" placeholder="name@example.com">
                    <label for="floatingInputValue">Nombre</label>
                </div>
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInputValue" name="habitad" placeholder="name@example.com">
                    <label for="floatingInputValue">Tipo habitad</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInputValue" name="localizacion" placeholder="name@example.com">
                    <label for="floatingInputValue">Localizacion</label>
                </div>
                <div class="btn-group mb-2" role="group" aria-label="Basic radio toggle button group">
                    <label for="">Peligo de extincion: &nbsp;</label>
                    <input type="radio" value="si" class="btn-check" name="extincion" id="btnradio1" autocomplete="off">
                    <label class="btn btn-outline-danger" for="btnradio1">Si</label>
                
                    <input type="radio" value="no" class="btn-check" name="extincion" id="btnradio2" autocomplete="off">
                    <label class="btn btn-outline-primary" for="btnradio2">No</label>
                </div>
                <hr>
                <div class="text-center col-md-12">
                    <button class="btn btn-success">Guardar</button>
                </div>
            </form>
        </p>
    </div>
</div>