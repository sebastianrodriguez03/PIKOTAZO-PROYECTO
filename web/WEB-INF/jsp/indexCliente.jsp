
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="bootstrap1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
         <link href="css/login.css" rel="stylesheet" type="text/css"/>
         <style>
           
         </style> 
    </head>
    <body>
    
        <h1>Agrega un Nuevo Cliente</h1>
        <table class="table table-hover  table-dark table-striped text-center">
            <thead>
                <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Direccion</th>
                    <th scope="col">Telefono</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="dato" items='${lista}'>
                <tr>
                <td>${dato.Nombre}</td>
                <td>${dato.Apellido}</td>
                <td>${dato.Direccion}</td>
                <td>${dato.Telefono}</td>
                <td>
                    <a href="agregarCliente.htm" role="button"><i class="fas fa-user-plus"></i></a>
                    <a href="editarCliente.htm?IdCliente=${dato.IdCliente}"><i class="fas fa-edit"></i></a>
                    <a href="deleteCliente.htm?IdCliente=${dato.IdCliente}" onclick="return confirm('Estas seguro de eliminar');"><i class="fas fa-trash-alt"></i></a>
                </td>
            </tr>
            </c:forEach>
            </tbody>
            </table>
       
        </tbody>
    </body>
    
</html>