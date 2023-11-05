

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-11"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-11">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <title>Usuarios</title>
    
     
</head>
<body>
    <header>
<c:if test="${usuario.rol == 'admin'}">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="./Inicio">LEDH (Imagen)</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="./admin/MenuUsuarios">Usuarios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./admin/MenuClientes">Clientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./admin/MenuFacturacion">Facturaci?n</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./empleado/MenuProductos">Productos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./empleado/MenuVentas">Ventas</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</c:if>
     <c:if test="${usuario.rol == 'empleado'}">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="./Inicio">LEDH (Imagen)</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="./empleado/MenuProductos">Productos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./empleado/MenuVentas">Ventas</a>
                </li>
              
            </ul>
        </div>
    </div>
</nav>
</c:if>
<c:if test="${usuario.rol == 'cliente'}">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="./Inicio">LEDH (Imagen)</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Mis documentos</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</c:if>


</header>
    <div class="container">
        <h1 class="mt-4">Usuarios</h1>
        <a class="btn btn-primary mt-3" href="CrearUsuario">Crear Nuevo Usuario</a>

        <table class="table mt-4">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Rol</th>
                    <th>NickName</th>
                    <th>DNI</th>
                    <th>Direccion</th>
                    <th>Codigo Postal</th>
                    <th>Correo</th>
                    <th>Editar</th>
                    <th>Borrar</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${usuarios}" var="u">
                    <tr>
                        <td><c:out value="${u.nombreCompleto}"/></td>
                        <td><c:out value="${u.rol}"/></td>
                        <td><c:out value="${u.nickName}"/></td>
                        <td><c:out value="${u.dni}"/></td>
                        <td><c:out value="${u.direccion}"/></td>
                        <td><c:out value="${u.codigoPostal}"/></td>
                        <td><c:out value="${u.mail}"/></td>
                        <td>
                            <form action="EditarUsuario" method="post">
                                <input type="hidden" name="id_usuario" value="${u.id_usuario}">
                                <button type="submit" class="btn btn-primary">Editar</button>
                            </form>
                        </td>
                        <td>
                            <form action="BorrarUsuario" method="post">
                                <input type="hidden" name="id_usuario" value="${u.id_usuario}">
                                <button type="submit" class="btn btn-danger">Borrar</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        
        <a class="btn btn-secondary" href="./../">Volver</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
