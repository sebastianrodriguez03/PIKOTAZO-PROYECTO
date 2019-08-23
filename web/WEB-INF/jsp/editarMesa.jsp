
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="bootstrap1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
         <link href="css/login.css" rel="stylesheet" type="text/css"/>
         <link href="css/form.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-2.2.4.min_1.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/validar.js" type="text/javascript"></script>
    </head>
    <body>
        <h1>Edita datos del Cliente Necesario</h1>
        <div class="card-body">
            <form action="#" method="post" id="frm-registro">
				<p class="Nombre">
					<input type="text" class="input" placeholder="Personas" id="Nombre" name="Nombre"  value="${lista[0].NumeroPersonas}" onblur="revisar(this)" onkeyup="revisar(this)" autocomplete="off" required>
                                 <a href="index.htm">Regresar</a>
			</form>
        </div>
    </body>
</html>