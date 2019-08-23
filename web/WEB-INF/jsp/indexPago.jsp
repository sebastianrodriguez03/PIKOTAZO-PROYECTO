<%-- 
    Document   : indexCiudad
    Created on : 24-may-2019, 17:03:16
    Author     : Usuario
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="bootstrap1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         </div> <a name="" id="" class="btn btn-primary p-10 mb-5  mt-5 m-right" href="agregarPago.htm" role="button">Nuevo Registro</a>
        <h1>Agrega Nuevos Pagos</h1>
        <table class="table table-hover table-dark">
            <thead>
                    <th>Empleado</th>
                    <th>Fecha Inicial</th>
                    <th>Valor</th>
                    <th>Descripcion</th>
                    <th>Fecha Final</th>
                    
                </tr>
            </thead>
            <tbody>
            <c:forEach var="dato" items="${lista}">
                <tr>
                
                <td>${dato.Empleado}</td>
                <td>${dato.FechaInicio}</td>
                <td>${dato.Valor}</td>
                <td>${dato.Descripcion}</td>
                <td>${dato.FechaFin}</td>
                <td>
                    <a href="editarPago.htm?IdPago=${dato.IdPago}">Editar</a>
                    <a href="deletePago.htm?IdPago=${dato.IdPago}" onclick="return confirm('Estas seguro de eliminar');">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
            </tbody>
            </table>
       
        </tbody>
    </body>
</html>
