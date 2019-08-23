
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
        <h1>Lista De Mesas Disponibles</h1>
      
             <div class="card-body">
            <form method="POST" id="frm-registro">
             <label>Numero de Personas</label>
            <input type="text" name="NumeroPersonas" class="form-control">
             <input type="submit" name="Agregar" class="btn btn-sucess">
             <a href="index.htm">Regresar</a>
             </form>
        </div>
    </body>
</html>
