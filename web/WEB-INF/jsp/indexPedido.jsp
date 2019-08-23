
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    </head>
    </head>
    <body>
        
        <h1>Agrega un Nuevo Pedido</h1>
        <table class="table table-hover table-dark">
            <thead>
           
                    <th scope="col">Cliente</th>
                    <th scope="col">Empleados</th>
                    <th scope="col">Mesa</th>
                    <th scope="col">Fecha</th>
                    <th scope="col">Domicilio</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="dato" items="${lista}">
                <tr>
                <td>${dato.Cliente}</td>
                <td>${dato.empleados}</td>
                <td>${dato.Npersona}</td>
                <td>${dato.Fecha}</td>
                <td>${dato.Domicilio}</td>
                <td>
                    <a href="agregarPedido.htm" role="button"><i class="fas fa-user-plus"></i></a>
                    <a href="editarPedido.htm?IdPedido=${dato.IdPedido}"><i class="fas fa-edit"></i></a>
                    <a href="deletePedido.htm?IdPedido=${dato.IdPedido}" onclick="return confirm('Estas seguro de eliminar');"><i class="fas fa-trash-alt"></i></a>
                </td>
            </tr>
            </c:forEach>
            </tbody>
            </table>
       
    </body>
</html>
