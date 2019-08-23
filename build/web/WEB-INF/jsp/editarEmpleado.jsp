<%-- 
    Document   : editarCiudad
    Created on : 24-may-2019, 17:03:00
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
       <h1>Editar</h1>
        <form method="POST">
              
              <label>Nombre</label>
                 <select name="Nombre">
              <c:forEach var="dato" items="${lista}">
                  <c:if test="${dato.IdEmpleado != lista[0].IdEmpleado}">
                      <option value="${dato.Empleados}">${dato.Empleados}</option>
                     </c:if>
                      
                       <c:if test="${dato.IdEmpleado == lista[0].IdEmpleado}">
                            <option value="${dato.Empleados}" selected="true" >${dato.Empleados}</option>
                      </c:if>
               
            </c:forEach>
            </select>
              
                    <label>Cargo</label>
                  <select name="IdCargo">
              <c:forEach var="dato" items="${listaCA}">
                  <c:if test="${dato.IdCargo != lista[0].IdCargo}">
                       <option value="${dato.IdCargo}">${dato.Ncargo}</option>
                     </c:if>
                       <c:if test="${dato.IdCargo == lista[0].IdCargo}">
                            <option value="${dato.IdCargo}" selected="true">${dato.Cargo}</option>
                      </c:if>
            </c:forEach>
            </select>  
              <label>Apellido</label>
             <input type="text" name="Apellido" class="form-control" value="${lista[0].Apellido}">
              <label>Documento</label>
             <input type="text" name="Documento" class="form-control" value="${lista[0].Documento}">
             <input type="submit" name="Editar" value="Editar" class="btn btn-sucess" >
             <a href="index.htm">Regresar</a>
             </form>
    </body>
</html>
