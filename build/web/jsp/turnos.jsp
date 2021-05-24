<form id="turnos" style="display: none;">
    <p class="h3 text-primary mt-3">Información de los Turnos</p>
    <div class="form-group mt-2">
        <label for="unidadResidencial">Unidad Residencial</label>
        <select class="form-control" id="unidadResidencial">
          <option>1</option>
        </select>
    </div>
    <div class="form-group mt-2">
        <label for="zona">Zona</label>
        <select class="form-control" id="zona">
          <option>1</option>
        </select>
    </div>
    <div class="form-group mt-2">
        <label for="nombre">Nombre</label>
        <input type="text" class="form-control" id="nombre" placeholder="Ingrese el nombre">
    </div>
    <div class="form-group mt-2">
        <label for="cantPersonaTurno">Cantidad de Personas por Turno</label>
        <input type="number" class="form-control" id="cantTurnos" placeholder="Ingrese la cantidad de personas por turno">
    </div>
    <div class="form-group mt-2">
        <label for="diasDeLaSemanaDiv">Días de la Semana</label>
        <div id="diasDeLaSemanaDiv">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="diasDeLaSemana" id="lunes" value="1">
                <label class="form-check-label" for="lunes">Lunes</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="diasDeLaSemana" id="martes" value="2" >
                <label class="form-check-label" for="martes">Martes</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="diasDeLaSemana" id="miercoles" value="3" >
                <label class="form-check-label" for="miercoles">Miércoles</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="diasDeLaSemana" id="jueves" value="4" >
                <label class="form-check-label" for="jueves">Jueves</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="diasDeLaSemana" id="viernes" value="5" >
                <label class="form-check-label" for="viernes">Viernes</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="diasDeLaSemana" id="sabado" value="6" >
                <label class="form-check-label" for="sabado">Sábado</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="diasDeLaSemana" id="domingo" value="7" >
                <label class="form-check-label" for="domingo">Domingo</label>
            </div>
        </div>
    </div>
    <div class="form-group mt-2 row">
        <label>Rangos de Horas (Horario de 24 horas)</label>
        <div class="col-sm-2">
            <input type="number" class="form-control" id="horaInicio" placeholder="Hora Inicio">
        </div>
        <div class="col-sm-2">
             <input type="number" class="form-control" id="horaFin" placeholder="Hora Fin">
        </div>
        <div class="col-sm-2">
            <button id="agregarHoras" class="btn btn-primary">Agregar</button>
        </div> 
    </div>
    
    <table class="table table-hover mt-3">
        <thead>
          <tr>
            <th scope="col">Hora Inicio</th>
            <th scope="col">Hora Fin</th>
          </tr>
        </thead>
    </table>
    
    <button type="submit" class="btn btn-primary mt-3">Guardar</button>
</form>

