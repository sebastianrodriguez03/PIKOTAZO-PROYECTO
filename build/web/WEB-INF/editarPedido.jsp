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
              
              <label>Clientes</label>
                 <select name="IdCliente">
              <c:forEach var="dato" items="${listaC}">
                  <c:if test="${dato.IdCliente != lista[0].IdCliente}">
                      <option value="${dato.IdCliente}">${dato.Nombre}</option>
                     </c:if>
                      
                       <c:if test="${dato.IdCliente == lista[0].IdCliente}">
                            <option value="${dato.IdCliente}" selected="true" >${dato.Nombre}</option>
                      </c:if>
               
            </c:forEach>
            </select>
              
                    <label>Empleados</label>
                  <select name="IdEmpleado">
              <c:forEach var="dato" items="${listaE}">
                  <c:if test="${dato.IdEmpleado != lista[0].IdEmpleado}">
                        <option value="${dato.IdEmpleado}">${dato.empleados}</option>
                     </c:if>
                       <c:if test="${dato.IdEmpleado == lista[0].IdEmpleado}">
                             <option value="${dato.IdEmpleado}" selected="true">${dato.empleados}</option>
                     
                      </c:if>
              
            </c:forEach>
            </select>
                    <label>Mesas</label>
                  <select name="IdMesa">
              <c:forEach var="dato" items="${listaM}">
                  <c:if test="${dato.IdMesa != lista[0].IdMesa}">
                       <option value="${dato.IdMesa}">${dato.NumeroPersonas}</option>
                     </c:if>
                       <c:if test="${dato.IdMesa == lista[0].IdMesa}">
                            <option value="${dato.IdMesa}" selected="true">${dato.NumeroPersonas}</option>
                      
                      </c:if>
                
            </c:forEach>
            </select>
              <input type="date" name="Fecha" class="form-control" value="${lista[0].Fecha}">
               <input type="text" name="Domicilio" class="form-control" value="${lista[0].Domicilio}">
          
            
                    
             <input type="submit" name="Editar" value="Editar" class="btn btn-sucess" >
             <a href="index.htm">Regresar</a>
             </form>
    </body>
</html>

