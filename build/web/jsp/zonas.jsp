<%@page import="negocio.ZonaNegocio"%>
<%@page import="identidades.Zona"%>
<%@page import="java.util.List"%>
<%@page import="identidades.UnidadResidencial"%>
<%@page import="negocio.UnidadResidencialNegocio"%>

<%
    String nombre = request.getParameter("nombre");
    String unidadResid = request.getParameter("unidadResidencial");
    int unidadResidId;

    try {
        unidadResidId = Integer.parseInt(unidadResid);
    } catch (Exception ex) {
        unidadResidId = 0;
    }

    Zona zona = new Zona();
    zona.setNombre(nombre);
    zona.setUnidadResidencialId(unidadResidId);

    ZonaNegocio neg = new ZonaNegocio();
    neg.createZona(zona);

%>
<div id="zonas" style="display: none;">
    <form  action="#" method="post">
        <p class="h3 text-primary mt-3">Información de las Zonas</p>
        <div class="form-group mt-2">
            <label for="unidadResidencial">Unidad Residencial</label>
            <select class="form-control" id="unidadResidencial" name="unidadResidencial">
              <option>Selecciona una unidad residencial</option>
            <%
                UnidadResidencialNegocio unidadRNeg = new UnidadResidencialNegocio();
                List<UnidadResidencial> listUnidadResidencial = unidadRNeg.listUnidadResidencial();

                for(UnidadResidencial unidad: listUnidadResidencial) {
            %>
                <option value="<%=unidad.getId()%>"><%=unidad.getNombre()%></option>
            <%

                }
            %>
            </select>
        </div>
        <div class="form-group mt-2">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese el nombre">
        </div>
        <button type="submit" class="btn btn-primary mt-3">Guardar</button>
    </form>

    <table class="table table-hover mt-3">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Nombre</th>
            <th scope="col">Unidad Residencial</th>
          </tr>
        </thead>

        <%
            ZonaNegocio zonaNeg = new ZonaNegocio();
            List<Zona> listZona = zonaNeg.listZona();

            for(Zona zn: listZona) {
        %>
        <tbody>   
            <tr>
                <td><%=zn.getId()%></td>
                <td><%=zn.getNombre()%></td>
                <td><%=zn.getUnidadResidencialId()%></td>
            </tr>
         <%

            }
        %>
        </tbody>
    </table>
    
</div>
        

