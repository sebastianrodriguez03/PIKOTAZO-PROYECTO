
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
        <div class="row d-flex justify-content-center">
            <h1>Agrega un Nuevo Plato</h1>
            <table class=" table table-hover table-dark">
                <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Descripcion</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items='${lista}'>
                        <tr>
                            <td>${dato.NombrePlato}</td>
                            <td>${dato.Precio}</td>
                            <td>${dato.Descripcion}</td>
                            <td>
                                <a href="agregarPlato.htm" role="button"><i class="fas fa-user-plus"></i></a>
                                <a href="editarPlato.htm?IdPlato=${dato.IdPlato}"><i class="fas fa-edit"></i></a>
                                <a href="deletePlato.htm?IdPlato=${dato.IdPlato}" onclick="return confirm('Estas seguro de eliminar');"><i class="fas fa-trash-alt"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </tbody>
</body>
</html>
