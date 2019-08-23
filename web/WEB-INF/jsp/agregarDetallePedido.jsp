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
          <h1>Agregar Detalle Pedido</h1>
          
        <div class="card-body">
            <form method="POST">
                    <label>Plato</label>
                 <select name="IdPlato">
              <c:forEach var="dato" items="${listaPl}">
                <option value="${dato.IdPlato}">${dato.NombrePlato}</option>
            </c:forEach>
            </select>
                    <label>Pedido</label>
                  <select name="IdPedido">
              <c:forEach var="dato" items="${listaP}">
                <option value="${dato.IdPedido}">${dato.IdPedido}</option>
            </c:forEach>
            </select>
                    <label>Cantidad</label>
             <input type="text" name="Cantidad" class="form-control">
             <label>Precio</label>
             <input type="text" name="Precio" class="form-control">
             <input type="submit"  value="Agregar"class="btn btn-sucess">
             <a href="index.htm">Regresar</a>
             </form>
        </div>
    </body>
</html>
