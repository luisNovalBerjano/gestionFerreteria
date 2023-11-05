<%-- 
    Document   : inicio
    Created on : 03-nov-2023, 19:08:46
    Author     : luisn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
     <!-- Incluye la hoja de estilos de Bootstrap 5 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <title>Gestión Ferretería</title>
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
                    <a class="nav-link" href="./admin/MenuFacturacion">Facturación</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./empleado/MenuProductos">Productos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./empleado/MenuVentas">Ventas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./CerrarSesion">Cerrar Sesion</a>
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
              <li class="nav-item">
                    <a class="nav-link" href="./CerrarSesion">Cerrar Sesion</a>
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
                <li class="nav-item">
                    <a class="nav-link" href="./CerrarSesion">Cerrar Sesion</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</c:if>

<div class="container mt-5">
    
    
    <c:if test="${usuario.rol == 'admin' || usuario.rol == 'empleado'}">
        <c:if test="${usuario.rol == 'admin'}">
            <div class="list-group mt-3">
                <a href="#" class="list-group-item list-group-item-action">Administración de usuarios</a>
                <a href="#" class="list-group-item list-group-item-action">Administración de clientes</a>
                <a href="#" class="list-group-item list-group-item-action">Administración de documentos</a>
            </div>
        </c:if>

        <div class="list-group mt-3">
            <a href="#" class="list-group-item list-group-item-action">Administración de productos</a>
            <a href="#" class="list-group-item list-group-item-action">Administración de ventas</a>
        </div>
    </c:if>
</div>
</header>
<footer style="background-color: black"
            class="text-center text-lg-start text-white"
            >

            <!-- Grid container -->
            <div class="container p-4 pb-0">
                <hr class="my-3">
                <!-- Section: Links -->
                <section class="">
                    <!--Grid row-->
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold">
                                La Electrica Del Hogar
                            </h6>
                            <p>
                                Somos una plataforma, dedicada a facilitar la venta de armas de segunda mano entre propietarios.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <hr class="w-100 clearfix d-md-none" />

                        <hr class="w-100 clearfix d-md-none" />          
                       

                        <!-- Grid column -->
                        <hr class="w-100 clearfix d-md-none" />

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold">Contacto</h6>
                            <p><i class="fas fa-home mr-3"></i>Plaza Del Aljarafe Nº8 Bajo IZQ, CP 41005 (Sevilla)</p>
                            <p><i class="fas fa-envelope mr-3"></i> oficial.ledh@gmail.com</p>
                            <p><i class="fas fa-phone mr-3"></i><a class="text-white" href=tel:+34607450598>Servicio de Whatsapp</a> <a href="https://wa.me/+34607450598"
                               class="btn btn-outline-light btn-floating m-1"
                               class="text-white"
                               role="button"
                               ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                                <path d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z"/>
                                </svg>
                            </a> </p>
                           
                            <p><i class="fas fa-print mr-3"></i> <a href="8VR5+GX Bollullos de la Mitación"></a></p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!--Grid row-->
                </section>
                <!-- Section: Links -->

                <hr class="my-3">

                <!-- Section: Copyright -->
<section class="p-3 pt-0">
    <div class="row d-flex align-items-center justify-content-center">
        <!-- Combined Grid column for Copyright and Social Media Links -->
        <div class="col-md-12 text-center">
            <!-- Copyright -->
            <div class="p-3">
                © Luis Noval Berjano
            </div>
            <!-- Social Media Links -->
            <a href="https://facebook.com" class="btn btn-outline-light btn-floating m-1 text-white" role="button">
                <i class="fab fa-facebook-f"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                    <!-- Facebook SVG code here -->
                </svg></i>
            </a>
            <a href="https://www.google.com/maps/place/C.+Granada,+13,+41110+Bollullos+de+la+Mitaci%C3%B3n,+Sevilla/@37.3413656,-6.142208,17z/data=!4m6!3m5!1s0xd121230798e25eb:0x59f66d5498776f7c!8m2!3d37.3413656!4d-6.1400193!16s%2Fg%2F11c227sx43"
               class="btn btn-outline-light btn-floating m-1 text-white" role="button">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                    <!-- Google Maps SVG code here -->
                </svg>
            </a>
            <a href="https://Instagram.com" class="btn btn-outline-light btn-floating m-1 text-white" role="button">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                    <!-- Instagram SVG code here -->
                </svg>
            </a>
        </div>
    </div>
</section>

            </div>
        </footer>
</body>
</html>
