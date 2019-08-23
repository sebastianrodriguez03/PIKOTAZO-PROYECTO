<%-- 
    Document   : agregarCiudad
    Created on : 24-may-2019, 17:02:45
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
          <h1>Agregar Empleado</h1>
          
        <div class="card-body">
            <form method="POST">
              <label>Nombre</label>
             <select name="Nombre">
              <c:forEach var="dato" items="${lista}">
                <option value="${dato.Empleados}">${dato.Empleados}</option>
            </c:forEach>
            </select>
              <label>Cargo</label>
                <select name="IdCargo">
              <c:forEach var="dato" items="${listaCA}">
                <option value="${dato.IdCargo}">${dato.Cargo}</option>
            </c:forEach>
            </select>  
              <label>Apellido</label>
             <input type="text" name="Apellido" class="form-control">
             <label>Documento</label>
             <input type="text" name="Documento" class="form-control">
             <input type="submit"  value="Agregar"class="btn btn-sucess">
             <a href="index.htm">Regresar</a>
             </form>
        </div>
    </body>
</html>
