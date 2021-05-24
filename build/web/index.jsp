<%-- 
    Document   : index
    Created on : 23-may-2021, 12:08:11
    Author     : Mafe Sanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
          <script data-require="jquery@*" data-semver="2.1.1" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>ReservaYaJSPWithServlet</title>
    </head>
    <body>
        <div class="container">
            <p class="h2 text-primary" style="margin-top:15px">ReservaYa</p>
            <div class="row">
                <div class="col-sm-2">
                    <div id="btnGrp" class="btn-group-vertical" role="group" style="margin-top:15px">
                        <input type="button" class="btn-check" name="btnUnidadResidencial" id="btnUnidadResidencial" autocomplete="off" onclick="showUnidadResidencial()">
                        <label class="btn btn-outline-primary" for="btnUnidadResidencial">Unidad Residencial</label>

                        <input type="button" class="btn-check" name="btnZonas" id="btnZonas" autocomplete="off" onclick="showZonas()">
                        <label class="btn btn-outline-primary" for="btnZonas" >Zonas</label>

                        <input type="button" class="btn-check" name="btnTurnos" id="btnTurnos" autocomplete="off" onclick="showTurnos()">
                        <label class="btn btn-outline-primary" for="btnTurnos">Turnos</label>

                        <input type="button" class="btn-check" name="btnReservas" id="btnReservas" autocomplete="off">
                        <label class="btn btn-outline-primary" for="btnReservas">Reservas</label>
                    </div>
                </div>
                <div class="col-sm-9">
                    <div>
                        <jsp:include page="jsp/unidadResidencial.jsp" flush="true" />
                        <jsp:include page="jsp/zonas.jsp" flush="true" />
                        <jsp:include page="jsp/turnos.jsp" flush="true" />
                    </div>
                </div>
            </div>
        </div>
                    
        <script>
            function showUnidadResidencial(){
                $("#unidadResidencial").show();
                $("#zonas").hide();
                $("#turnos").hide();
            }
            function showZonas(){
                $("#unidadResidencial").hide();
                $("#zonas").show();
                $("#turnos").hide();
            }
            function showTurnos(){
                $("#unidadResidencial").hide();
                $("#zonas").hide();
                $("#turnos").show();
            }
        </script>
    </body>
</html>
