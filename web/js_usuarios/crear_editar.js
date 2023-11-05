/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to blur this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let validar = true;
let validarNombreCompleto = false;
let validarNickName = false;
let validarPass = false;
let validarRol = false;
let validarDNI = false;
let validarTelefono = false;
let validarDireccion = false;
let validarCodigoPostal = false;
let validarMail = false;

const nombreCompleto = document.getElementById("nombreCompleto");
const nickName = document.getElementById("nickName");
const pass = document.getElementById("pass");
const rol = document.getElementById("rol");
const dni = document.getElementById("dni");
const telefono = document.getElementById("telefono");
const direccion = document.getElementById("direccion");
const codigoPostal = document.getElementById("codigoPostal");
const mail = document.getElementById("mail");
const crearUsuario = document.getElementById("crearUsuario");

nombreCompleto.addEventListener('blur', () => {
    if (nombreCompleto.value == "") {
        alert("El nombre esta vacio");
     validarNombreCompleto = false;
    }else{
        validarNombreCompleto = true;
        
    }validarFormulario();
});
nickName.addEventListener('blur', () => {
    if (nickName.value == "") {
        alert("El nickname esta vacio");
       validarNickName = false;
    }else{
        validarNickName = true;
    }validarFormulario();
});
pass.addEventListener('blur', () => {
    if (pass.value == "") {
        alert("La contraseña esta vacia");
     validarPass = false;
    }else{
        validarPass = true;
    }validarFormulario();
});
rol.addEventListener('blur', () => {
    if (rol.value == "") {
        alert("El rol esta vacio");
      validarRol = false;
    }else{
        validarRol = true;
    }validarFormulario();
});

dni.addEventListener('blur', () => {
    if (dni.value == "") {
        alert("El dni esta vacio");
     validarDNI = false;
    }else{
        validarDNI = true;
    }validarFormulario();
});

telefono.addEventListener('blur', () => {
    if (telefono.value < 600000000 && telefono.value > 999999999) {
        alert("El telefono no tiene un formato valido");
         validarTelefono = false;
    }else{
        validarTelefono = true;
    }validarFormulario();
    
});

direccion.addEventListener('blur', () => {
    if (direccion.value == "") {
        alert("La direccion esta vacia");
        validarDireccion = false;
    }else{
        validarDireccion = true;
    }validarFormulario();
});

codigoPostal.addEventListener('blur', () => {
    if (codigoPostal.value < 10000 && codigoPostal.value > 99999) {
        alert("El codigo postal no tiene un formato valido");
         validarCodigoPostal = false;
    }else{
        validarCodigoPostal = true;
    }validarFormulario();
});
mail.addEventListener('blur', () => {
    if (mail.value == "") {
        alert("El Email esta vacio");
         validarMail = false;
    }else{
        validarMail = true;
    }validarFormulario();
});

function validarFormulario() {
    validar = validarNombreCompleto && validarNickName && validarPass && validarRol && validarDNI && validarTelefono && validarDireccion && validarCodigoPostal && validarMail;
    
    if (validar) {
        crearUsuario.style.display = "block";
    } else {
        crearUsuario.style.display = "none";
    }
}

