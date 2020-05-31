<%-- 
    Document   : exito
    Created on : 02-jun-2019, 19:34:14
    Author     : -pc-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exito guardado</title>
                <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
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
           <li><a href="index.jsp"> <i class="material-icons">home</i></a></li>
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
              
              <div class="container section center-align">
                  <h1 class="">REGISTRO INSERTADO EXITOSAMENTE</h1>
                          <p>¿Que desea hacer ahora?</p>
                          <a href="usuario.jsp" class="btn purple darken-2">Registrar nuevo usuario</a>
                          <a href="mostrar.do" class="btn purple darken-2">Ver listado</a>
              </div>

         <script src="js/jquery-3.4.1.min.js"></script>
         <script src="js/materialize.js"></script>
         <script src="js/init.js"></script>
    </body>
</html>
