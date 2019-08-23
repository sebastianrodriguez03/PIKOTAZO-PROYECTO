
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="bootstrap1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
          <link href="css/form.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-2.2.4.min_1.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/validar.js" type="text/javascript"></script>
    </head>
    <body>
          <h1>Agregar Pedido</h1>
          
        <div class="card-body">
            <form method="POST" id="frm-registro">
                    <label>Clientes</label>
                 <select name="IdCliente">
              <c:forEach var="dato" items="${listaC}">
                <option value="${dato.IdCliente}">${dato.Nombre}</option>
            </c:forEach>
            </select>
                    <label>Empleados</label>
                  <select name="IdEmpleado">
              <c:forEach var="dato" items="${listaE}">
                <option value="${dato.IdEmpleado}">${dato.empleados}</option>
            </c:forEach>
            </select>
                    <label>Mesas</label>
                  <select name="IdMesa">
              <c:forEach var="dato" items="${listaM}">
                <option value="${dato.IdMesa}">${dato.NumeroPersonas}</option>
            </c:forEach>
            </select>
                    <label>Fecha</label>
             <input type="date" name="Fecha" class="form-control">
             <label>Domicilio</label>
             <input type="text" name="Domicilio" class="form-control">
             <input type="submit"  value="Agregar"class="btn btn-sucess">
             <a href="index.htm">Regresar</a>
             </form>
        </div>
    </body>
</html>

