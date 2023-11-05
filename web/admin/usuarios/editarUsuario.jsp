

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Editar usuario</title>
    </head>
    <body>
        <h1>Editar usuario</h1>
        <br>
        <form method="post">
            <input type="hidden" name="id_usuario" value="${usuario.id_usuario}">
            <label>Nombre</label>
            <input type="text" name="nombreCompleto" value="${usuario.nombreCompleto}" required>
            <br>
            <label>nick Name</label>
            <input type="text" name="nickName" value="${usuario.nickName}" required>
            <br>
            <label>Contraseña</label>
            <input type="password" name="pass" value="${usuario.pass}" required>
            <br>
            <label>Rol</label>
            <select type="text" name="rol" required> 
                <option value="admin"
                        <c:if test="${usuario.rol == 'admin'}">
                            selected
                        </c:if>
                        >
                    Administrador
                </option>
                <option value="empleado"
                        <c:if test="${usuario.rol == 'empleado'}">
                            selected
                        </c:if>>
                    Empleado
                </option>
                <option value="cliente" 
                        <c:if test="${usuario.rol == 'cliente'}">
                            selected
                        </c:if>>
                    Cliente
                </option>
            </select>
            <br>
            <label>Dni</label>
            <input type="text" name="dni" value="${usuario.dni}" required>
            <br>
            <label>Telefono</label>
            <input type="number" min="600000000" max="999999999" name="telefono" value="${usuario.telefono}" required>
            <br>
            <label>Direccion</label>
            <input type="text" name="direccion" value="${usuario.direccion}" required>
            <br>
            <label>Codigo Postal</label>
            <input type="number" min="10000" max="99999" name="codigoPostal" value="${usuario.codigoPostal}" required>
            <br>
            <label>Email</label>
            <input type="text" name="mail" value="${usuario.mail}" required>
            <br>

            <input type="submit" value="Editar usuario">
        </form>
        <c:if test="${! empty error}">
            <div class="error">${error}</div>
        </c:if>
    </body>
</html>
