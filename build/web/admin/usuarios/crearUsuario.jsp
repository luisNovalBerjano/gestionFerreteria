

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <script src="../js_usuarios/crear_editar.js" defer>
            
        </script>
        <title>Crear usuario</title>
    </head>
    <body>
        <h1>Crear usuario</h1>
        <br>
        <form method="post">
            <label>Nombre</label>
            <input type="text" name="nombreCompleto" id="nombreCompleto"
                   <c:if test="${error != ''}">value="${nombreCompleto}" </c:if>
               required 
            >       
            <br>
            <label>nick Name</label>
            <input type="text" name="nickName" value="${nickName}" id="nickName"
                  
                    <c:if test="${error != ''}">value="${nickName}" </c:if>
              required
            >
            <br>
            <label>Contraseña</label>
            <input type="password" name="pass" value="${pass}" id="pass"
                  <c:if test="${error != ''}">value="${pass}" </c:if>  
                   required
            >
            <br>
            <label>Rol</label>
            <select type="text" name="rol" required id="rol"> 
                <option value="admin">
                    Administrador
                </option>
                <option value="empleado">
                    Empleado
                </option>
                <option value="cliente" >
                    Cliente
                </option>
            </select>
            <br>
            <label>Dni</label>
            <input type="text" name="dni" value="${dni}" id="dni"
                    <c:if test="${error != ''}">value="${dni}" </c:if>
                   required
            >
            <br>
            <label>Telefono</label>
            <input type="number" min="600000000" max="999999999" name="telefono" value="${telefono}" id="telefono"
                    <c:if test="${error != ''}">value="${telefono}" </c:if>
                   required>
            <br>
            <label>Direccion</label>
            <input type="text" name="direccion" value="${direccion}"  id="direccion"
                    <c:if test="${error != ''}">value="${direccion}" </c:if>
                   required>
            <br>
            <label>Codigo Postal</label>
            <input type="number" min="10000" max="99999" name="codigoPostal" value="${codigoPostal}" id="codigoPostal"
                    <c:if test="${error != ''}">value="${codigoPostal}" </c:if>
                   required>
            <br>
            <label>Email</label>
            <input type="text" name="mail" value="${mail}" id="mail"
                    <c:if test="${error != ''}">value="${mail}" </c:if>
                   required>
            <br>

            <input type="submit" value="Crear nuevo usuario" id="crearUsuario">
        </form>
        <c:if test="${! empty error}">
            <div class="error">${error}</div>
        </c:if>
    </body>
</html>
