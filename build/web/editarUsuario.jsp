<%-- 
    Document   : editarUsuario
    Created on : 17-jun-2019, 23:06:09
    Author     : KELVIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
          <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
                    <!-- Cabeza de cuerpo de pagina -->
  <header>
            <div class="navbar-fixed">
        <nav class="purple darken-2">
          <div class="nav-wrapper">
            <a href="#!" class="brand-logo">CRUD 2019</a>
             <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
               <li><a href="index.jsp"> <i class="material-icons">home</i> </a></li>
              <li><a href="usuario.jsp">Registrar Usuario</a></li>
              <li><a href="mostrar.do">Mostrar Usuarios</a></li>
            </ul>
          </div>
        </nav>
</div>
          
 <ul id="slide-out" class="sidenav">
    <li><div class="user-view">
      <div class="background">
        <img src="images/full_wallpaper.jpg">
      </div>
      <a href="#user"><img class="circle" src="images/boy.png"></a>
      <a href="#name"><span class="white-text name">Crud 2019</span></a>
      <a href="#email"><span class="white-text email">JSP, SERVLETS y MYSQL</span></a>
    </div></li>
           <li><a href="index.jsp"> <i class="material-icons">home</i> Inicio</a></li>
    <li><div class="divider"></div></li>
    <li><a class="subheader">Subheader</a></li>
              <li><a href="usuario.jsp">Registrar Usuario</a></li>
              <li><a href="mostrar.do">Mostrar Usuarios</a></li>
  </ul>
 </header> 
  <div class="section no-pad-bot" id="index-banner">
    <div class="container section">
      <br><br>
      <!-- aqui estan los textos -->
      
      <center><h5>EDITAR USUARIO</h5></center> 
   
        <!--Cajas de texto-->
        <form action="modificar.do" method="POST">
            <h6> Nombres:&nbsp;   
                <input type="hidden" size="35" name="id_user"  value="<c:out value="${usuario.id_user}"/>"  placeholder="Nombres" required/>
               <input type="text" size="35" name="txtNombres"  value="<c:out value="${usuario.nombres}"/>"  placeholder="Nombres" required/></h6>
             <h6>Apellidos:&nbsp;  
             <input type="text" size="35" name="txtApellidos" value="<c:out value="${usuario.apellidos}"/>" placeholder="Apellidos" required/> </h6>
    
        <h6> Email:&nbsp; 
            <input type="text" size="40" name="txtEmail" value="<c:out value="${usuario.email}"/>" placeholder="Ejemplo@gmail.com" required/></h6>
        
        <h6> Usuario:&nbsp; 
            <input type="text" size="30" name="txtUsuario" value="<c:out value="${usuario.usuario}"/>" placeholder="Usuario123" required/> </h6>
   
        <h6>Ingrese Su Clave:&nbsp;  
            <input type="password" size="20" name="txtClave" value="<c:out value="${usuario.clave}"/>" placeholder="********" required/> </h6>
   
        <h6>Confirme su Clave:&nbsp;  
            <input type="password" size="20" name="txtClave2" value="<c:out value="${usuario.clave}"/>" placeholder="********" required/> </h6>
   <!--Caja para elejir entre Administrador y Empleado-->
   <!--ComboBox-->
     <br>
     <!--Botones del formulario-->
      <input type="submit" class="btn" value="ACTUALIZAR DATOS" name="btnEnviar" />&nbsp;
        </form>

    </div>
  </div>

             <!-- Pie de pagina -->
      <footer class="page-footer purple darken-2">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Saludos!</h5>
                <p class="grey-text text-lighten-4">Este código fue realizado como ejemplo 
                    de como conectar un BD de Mysql en Java Web JSP, Servles, MVC - 
                    parte visual se utilizo Materialize Design.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links de interes</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="https://materializecss.com/">Materialize CSS</a></li>
                  <li><a class="grey-text text-lighten-3" href="https://getbootstrap.com/">BootStrap</a></li>
                  <li><a class="grey-text text-lighten-3" href="https://fontawesome.com/">Font Awesome Icons</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2019 Copyright 
            <a class="grey-text text-lighten-4 right" href="#!">Kelvin Domínguez - Development</a>
            </div>
          </div>
        </footer>
            <script src="js/jquery-3.4.1.min.js"></script>
            <script src="js/materialize.js"></script>
             <script src="js/init.js"></script>
    </body>
</html>
