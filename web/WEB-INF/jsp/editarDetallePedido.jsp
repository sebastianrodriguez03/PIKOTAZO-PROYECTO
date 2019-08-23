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
              
              <label>Platos</label>
                 <select name="IdPlato">
              <c:forEach var="dato" items="${listaPl}">
                  <c:if test="${dato.IdPlato != lista[0].IdPlato}">
                      <option value="${dato.IdPlato}">${dato.NombrePlato}</option>
                     </c:if>
                      
                       <c:if test="${dato.IdPlato == lista[0].IdPlato}">
                            <option value="${dato.IdPlato}" selected="true" >${dato.NombrePlato}</option>
                      </c:if>
               
            </c:forEach>
            </select>
              
                    <label>Pedidos</label>
                  <select name="IdPedido">
              <c:forEach var="dato" items="${listaP}">
                  <c:if test="${dato.IdPedido != lista[0].IdPedido}">
                        <option value="${dato.IdPedido}">${dato.IdPedido}</option>
                     </c:if>
                       <c:if test="${dato.IdPedido == lista[0].IdPedido}">
                             <option value="${dato.IdPedido}" selected="true">${dato.IdPedido}</option>
                     
                      </c:if>
              
            </c:forEach>
                             
             <label>Cantidad</label>
              <input type="text" name="Cantidad" class="form-control" value="${lista[0].Cantidad}">
               <label>Precio</label>
              <input type="text" name="Precio" class="form-control" value="${lista[0].Precio}">
                
              <input type="submit" name="Editar" value="Editar" class="btn btn-sucess" >
              <a href="index.htm">Regresar</a>
            </form>
    </body>
</html>
