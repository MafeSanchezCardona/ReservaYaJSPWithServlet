<%@page import="java.util.List"%>
<%@page import="identidades.UnidadResidencial"%>
<%@page import="negocio.UnidadResidencialNegocio"%>

<div id="unidadResidencial">
    <form action="/ReservaYaJSPWithServlet/GuardarUnidadResidencialServlet" method="post">
        <p class="h3 text-primary mt-3">Información de la Unidad Residencial</p>
        <div class="form-group mt-2">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingrese el nombre">
        </div>
        <div class="form-group mt-2">
            <label for="telefono">Teléfono</label>
            <input type="number" class="form-control" name="telefono" id="telefono" placeholder="Ingrese el teléfono">
        </div>
        <div class="form-group mt-2">
            <label for="direccion">Dirección</label>
            <input type="text" class="form-control" name="direccion" id="direccion" placeholder="Ingrese la dirección">
        </div>
        <div class="form-group mt-2">
            <label for="cantAptos">Cantidad de Apartamentos</label>
            <input type="number" class="form-control" name="cantAptos" id="cantAptos" placeholder="Ingrese la cantidad de apartamentos">
        </div>
        <button type="submit" class="btn btn-primary mt-3">Guardar</button>
    </form>

    <table class="table table-hover mt-3">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Nombre</th>
            <th scope="col">Telefono</th>
            <th scope="col">Dirección</th>
            <th scope="col">Cantidad de Apartamentos</th>
          </tr>
        </thead>
       
        <%
            UnidadResidencialNegocio unidadRNeg = new UnidadResidencialNegocio();
            List<UnidadResidencial> listUnidadResidencial = unidadRNeg.listUnidadResidencial();

            for(UnidadResidencial unidad: listUnidadResidencial) {
        %>
        <tbody>   
            <tr>
                <td><%=unidad.getId()%></td>
                <td><%=unidad.getNombre()%></td>
                <td><%=unidad.getTelefono()%></td>
                <td><%=unidad.getDireccion()%></td>
                <td><%=unidad.getCantidadAptos()%></td>
            </tr>
         <%

            }
        %>
        </tbody>
    </table>
    
</div>



