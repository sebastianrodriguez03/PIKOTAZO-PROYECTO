
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="bootstrap1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
         <link href="css/form.css" rel="stylesheet" type="text/css"/>
         <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-2.2.4.min_1.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/validar.js" type="text/javascript"></script>
    </head>
    <body>
        <h1>Editar Cualquier Plato!</h1>
        <div class="card-body">
             <form action="#" method="post" id="frm-registro">
                <p class="NombrePlato">
                    <input type="text" class="input" placeholder="Nombre" id="NombrePlato" name="NombrePlato" value="${lista[0].NombrePlato}" onblur="revisar(this)" onkeyup="revisar(this)" autocomplete="off" required>
                </p>

                <p class="Precio">
                    <input type="text" class="input" placeholder="Precio*" id="Apellido" name="Precio"  value="${lista[0].Precio}" onblur="revisar(this); revisarEmail(this)" onkeyup="revisar(this); revisarEmail(this)" autocomplete="off" required>
                </p>

                <p class="Descripcion">
                    <input type="text" class="input" placeholder="Descripcion*" id="Descripcion" name="Descripcion"  value="${lista[0].Descripcion}" onblur="revisar(this); revisaNumero(this)" onkeyup="revisar(this); revisaNumero(this)" autocomplete="off" required>
                </p>
                <div class="enviar">
                    <input type="submit" value="Agregar" id="enviar"/>
                    <div class="transicion"></div>
                </div>
                <a href="index.htm">Regresar</a>
            </form>
    </body>
</html>

