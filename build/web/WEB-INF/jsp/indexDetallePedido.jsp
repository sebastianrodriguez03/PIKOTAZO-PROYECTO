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
          </div> 
         <a name="" id="" class="btn btn-primary p-10 mb-5  mt-5 m-right" href="agregarDetallePedido.htm" role="button">Nuevo Registro</a>
        <h1>Agega un Nuevo Pedido</h1>
        <table class="table table-hover">
            <thead>
                    <th>DetallePedido</th>
                    <th>Plato</th>
                    <th>Pedido</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    
                </tr>
            </thead>
            <tbody>
            <c:forEach var="dato" items="${lista}">
                <tr>
                <td>${dato.IdDetallePedido}</td>
                <td>${dato.Plato}</td>
                <td>${dato.Pedido}</td>
                <td>${dato.Precio}</td>
                <td>${dato.Cantidad}</td>
                <td>
                    <a href="editarDetallePedido.htm?IdDetallePedido=${dato.IdDetallePedido}">Editar</a>
                    <a href="deleteDetallePedido.htm?IdDetallePedido=${dato.IdDetallePedido}" onclick="return confirm('Estas seguro de eliminar');">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
            </tbody>
            </table>
      
        </tbody>
    </body>
</html>
