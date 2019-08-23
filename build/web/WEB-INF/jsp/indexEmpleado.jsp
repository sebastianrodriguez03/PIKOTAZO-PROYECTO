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
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    </head>
    <body>
        
        <h1>Agrega un nuevo Empleado</h1>
        <table class="table table-hover table-dark">
            <thead>
                   
                    <th scope="col">Empleado</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Documento</th>
                    <th scope="col">Cargo</th>
    
                </tr>
            </thead>
            <tbody>
            <c:forEach var="dato" items="${lista}">
                <tr>
                <td>${dato.Empleados}</td>
                <td>${dato.Apellido}</td>
                <td>${dato.Documento}</td>
                <td>${dato.Cargo}</td>
     
                <td>
                    <a href="agregarEmpleado.htm" role="button"><i class="fas fa-user-plus"></i></a>
                    <a href="editarEmpleado.htm?IdEmpleado=${dato.IdEmpleado}"><i class="fas fa-edit"></i></a>
                    <a href="deleteEmpleado.htm?IdEmpleado=${dato.IdEmpleado}" onclick="return confirm('Estas seguro de eliminar');"><i class="fas fa-trash-alt"></i></a>
                </td>
            </tr>
            </c:forEach>
            </tbody>
            </table>
       
        </tbody>
    </body>
</html>

