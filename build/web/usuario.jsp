<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>login</title>

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
      <center><h5>REGISTRAR USUARIO</h5></center> 
   
        <!--Cajas de texto-->
        <form action="recibir.do" method="POST">
            <h6> Nombres:&nbsp;   <input type="text" size="35" name="txtNombres"  value=""  placeholder="Nombres" required/></h6>
             <h6>Apellidos:&nbsp;  <input type="text" size="35" name="txtApellidos" value="" placeholder="Apellidos" required/> </h6>
    
        <h6> Email:&nbsp; <input type="text" size="40" name="txtEmail" value="" placeholder="Ejemplo@gmail.com" required/></h6>
        
        <h6> Usuario:&nbsp;  <input type="text" size="30" name="txtUsuario" value="" placeholder="Usuario123" required/> </h6>
   
        <h6>Ingrese Su Clave:&nbsp;  <input type="password" size="20" name="txtClave" value="" placeholder="********" required/> </h6>
   
        <h6>Confirme su Clave:&nbsp;  <input type="password" size="20" name="txtClave2" value="" placeholder="********" required/> </h6>
   <!--Caja para elejir entre Administrador y Empleado-->
   <!--ComboBox-->
        
  <div class="input-field col s12">
    <select name="txtTipo">
      <option value="" disabled selected>Seleccione...</option>
      <option value="Empleado">Empleado</option>
      <option value="Usuario">Usuario</option>
    </select>
    <label>Tipo de Empleado</label>
  </div>

     <br>
     <!--Botones del formulario-->
     <input type="submit" value="ENVIAR DATOS" class="btn purple darken-2" name="btnEnviar" />&nbsp;
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

  <!--  Scripts-->
           <script src="js/jquery-3.4.1.min.js"></script>
  <!--
    SOLO SIRVE SI TENGO INTERNET
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>   
  -->
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
    </body>
</html>