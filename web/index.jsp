<%-- 
    Document   : index
    Created on : 28-may-2019, 14:13:26
    Author     : -pc-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
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
              <!-- Cuerpo de pagina -->
 <div class="container">
  <div class="row section">
    <div class="col s12">
      <ul class="tabs">
          <li class="tab col s3"><a class="active" href="#test1"><h5>GUARDAR</h5></a></li>
        <li class="tab col s3"><a href="#test2"><h5>LISTAR</h5></a></li>
        <li class="tab col s3"><a href="#test3"><h5>ACTUALIZAR</h5></a></li>
        <li class="tab col s3"><a href="#test4"><h5>BORRAR</h5></a></li>
      </ul>
    </div>
    <div id="test1" class="col s12">
        <h4 class="center-align">Método Guardar Servlets</h4>
        <p>
            <h5 class="center-align">Modelo</h5>
        </p>
        <p>
            En el modelo se deben de crear un metodo vacio cual dara paso a la inicialización del contructor cual es el que llena nuestros
            metodos get y set
            <img class="responsive-img"  src="images/guardar/inicializador.PNG">
        </p>
        <p>
            Las variables de los metodos get y set por recomendacion deben ser igual a los nombre de los atributos de la
            tabla de nuestra base de datos EJMPLO: <b>tb_alumnos: campos --> Nombres y en nuestro metodos get y set de ser igual 
                    String nombres;  <br>
                    <br>     
   public String getNombres() {<br>
        return Nombres;
    }<br>
<br>
    public void setNombres(String Nombres) {<br>
        this.Nombres = Nombres;<br>
        }<br> SE RECOMIENDA POR X O Y RAZON UD. NO SE RECUERDE COMO ESTAN ESCRITOS ESTOS CAMPOS <BR>
        Y NO GENERE ERROR.<br>
            </b>
            Nuestro contructor debe de estar de la siguiente manera, respetando el tipo de dato de cada campo
             <img class="responsive-img"  src="images/guardar/contructor.PNG">
        </p>
        <p>
        <h5 class="center-align">Método guardar</h5><br><br>
        En el método guardar debe ser un insert normal, <b> Recuerde que debe de concatenar bien las variables<br>
            Si no esto le generar que no guarde o un error, utilice bien las comillas dobles y simples mas <br>
        los signos +</b>
        <br> <img class="responsive-img"  src="images/guardar/metodoguardar.PNG">
        </p>
        <p>
        <h5 class="center-align">Controlador o Servlets Guardar</h5><br><br>
        Como utilizaremos el envio por POST utilizaremos el metodo <b>protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {</b>
        Aquí no hay donde perderse, ya que solo hay que intaciar el 
        <br><b>import Modelo.Conexion; <br>
            import Modelo.Usuario; </b> <br>
            Para este ejemplo se utiliza el modelo usuario. El nombre de mi SERVLETS se llama Recibir.java
            
        <br> <img class="responsive-img"  src="images/guardar/servlet.PNG">
        </p>
        
          <p>
        <h5 class="center-align">ESPERA ANTES DE IR A LA VISTA REVISA PRIMERO ESTO</h5><br><br>
        En la carpeta Web Pages existe uno que se llama <b>WEB-INF</b> dentro de ella hay un archivo web.xml ese archivo,<br>
        contiene las rutas para ir a los controladores ahora si ud. no utiliza los nombres correctos de estas rutas <br>
        le aparecera el error 404 o el 500 aveces aparece el error 500 porque la session ya caduco...
        EN ESTE MOMENTO NO UTILIZAREMOS PERO ES IMPORTANTE QUE CONOSCA ESTO YA QUE EN EL METODO DE MOSTRAR SE VERA 
        <BR> COMO FUNCIONA ESTO DE LAS RUTAS
        <BR>
        ahora este es el nombre de la ruta que segun el servlet incluyo a la hora de crearlo
        <br> <img class="responsive-img"  src="images/guardar/nombreruta.PNG"><br>
        Y esta la que dice <b>url-pattern</b> es la que utilizaremos para enviar algun dato por POST o GET o Mostrar
        <br> el listado de nuestros usuario
        <img class="responsive-img"  src="images/guardar/enviarporpost.PNG"><br>
        </p>
        <p>
            
        <h5 class="center-align">Vista Usuario Guardar</h5>
        <br><br>
        En la vista utilizamos el url-pattern en este caso se llama recibir.do
            <img class="responsive-img" src="images/guardar/formulario.PNG">
        </p>
        <p>  
       <h5 class="center-align">Resultado</h5>     
            <img class="responsive-img" src="images/guardar/final.PNG">
            <br>
        </p>
    </div>
      <div id="test2" class="col s12">
          <h4 class="center-align">Método Listar Servlets</h4>
        <p>
            <h5 class="center-align">Modelo</h5>
        </p>
        <p>
           En el método de listar nuestros datos de la tabla que tenemos en bd se hace de la siguiente manera
           <b>SE RECUERDAN QUE ANTERIORMENTE MECIONÉ QUE DEBIAN DE TENER LOS MÉTODO GET Y SET CON IDENTICOS NOMBRE,
               <BR> YA ALGUNOS VECES PODEMOS COMETER EL ERROR DE NO LLAMAR BIEN LOS DATOS
               PERO EN ESTA CASO EN LA PARTE SIGUIENTE:<BR></b>
           
            <img class="responsive-img"  src="images/listar/listar.PNG">
        </p>
        <p>
            <h5 class="center-align">CONTROLADOR O SERVLETS <b>Mostrar.Java</b></h5>
        </p>
        <p>
            En el controlador o servlet llamado Mostrar.java el metodo que utilizaremos sera: <b>  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException { </b> tal como se muestra en la imagen siguiente:
            <br><img class="responsive-img"  src="images/listar/controlador.PNG">
        </p>
        
        <p>
            <h5 class="center-align">VISTA <b>listarUsuario.jsp</b></h5>
        </p>
        <p>
            Antes de cargar la vista  <b> ES IMPORTANTE SABER QUE SI UD PONE EN LA URL /listarUsuario.jsp  
                SU TABLA APARECERA VACIA</b> ya que no esta activando el metodo del controlador mostrar,<b>UTILIZAREMOS 
                LA SIGUIENTE RUTA PARA CARGAR LOS DATOS A LA TABLA: </b>
                <br><img class="responsive-img"  src="images/listar/ruta.PNG"><br>
                EN ESTE CASO QUEREMOS ACTIVAR EL EVENTO DEL METODO processRequest asi que utilizaremos el nombre que esta
                en url-pattern en este caso se llama <b>mostrar.do</b>
                AUN SIGUE NO RECARGUES LA PAGUINA LEE EL SIGUIENTE ENUNCIADO...>
        </p>
         <p>
            <h5 class="center-align">VISTA AGREGAR LINEA MAGICA <b>listarUsuario.jsp</b></h5>
        </p>
        <p>
            ANTES DE CARGAR LA PAGINA DEBEMOS DE EXPORTAR UNA LINEA QUE ES LA SIGUIENTE:<BR>
            <b><img class="responsive-img" src="images/listar/linea.PNG"></b>
            <br> <img class="responsive-img" src="images/riete/bob.png" width="100px" >
        </p>
        
           <p>
            <h5 class="center-align">VISTA <b>listarUsuario.jsp</b> AHORA DEBEMOS HACER EL FOREACH</h5>
        </p>
        <p>
            En el modelo enviamos los atributos o campos de nuestra tabla y en el controlador <BR>
            creamos un Arraylist y en la vista debemos de recorrer ese array y que aparescan esos datos de la suguiente manera:<br>
            
            <br>Esta el parte de arriba de la tabla :<img class="responsive-img" src="images/listar/thead.PNG"></br>
            <br> Aqui es donde se hace el foreach y recorrer todos los campos <img class="responsive-img" src="images/listar/tbody.PNG">
        </p>
        
          <p>
            <h5 class="center-align">¿Como accedemos a listar?</h5>
        </p>
        <p>
            Vuelve al paso    <h5 class="center-align">VISTA AGREGAR LINEA MAGICA <b>listarUsuario.jsp</b></h5> <br>
        Asi en su url del navegador debe quedar como el siguiente: <b>http://localhost:60773/Proyecto_Final2019/mostrar.do</b>
        <br> Recuerde en esta caso se llama el url-pattern <b>mostrar.do</b>
        </p>
        <p>
               <h5 class="center-align">VISTA</h5>
        </p>
        <p class="center-align">El resultado es el siguiente:
            <img class="responsive-img" src="images/listar/verlistado.PNG">
             <br> <img class="responsive-img" src="images/riete/deadpool2.png" width="500px" >
        </p>
      </div>
    <div id="test3" class="col s12">
                  <h4 class="center-align">Método Buscar Servlets</h4>
        <p>
            <h5 class="center-align">Modelo</h5>
        </p>
        <p>
           Uniendo los conceptos o los procesos de Borrar y Listar se creo el de buscar por id esto nos 
           devolverá un registro y esto datos los podremos llenar en nuestro fomulario para luego actualizar esos datos 
           el metodo queda de la siguiente manera:<br>          
            <img class="responsive-img"  src="images/actualizar/buscar.PNG">
        </p>
   
       <p>
       <h5 class="center-align">Nuestro controlador <b>VerdatosUsuario.js</b></h5>
        </p>
        <p>
            En este controlador le enviaremos datos por GET asi que ahora utilizaremos el metodo <b>    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {</b><br> 
            y los paremetros que recibirá son los siguientes:<br>
            <img class="responsive-img"  src="images/actualizar/controlador.PNG">
        </p>
        <p>
       <h5 class="center-align">Crear vista <b>editarUsuario.jsp</b></h5>
        </p>
        <p>
            Esta vista es donde cargaremos los datos en cada input y debe de quedar de la siguiente manera:<br> 
           
            <img class="responsive-img"  src="images/actualizar/formedit.PNG">
        </p>
        
        <p>
       <h5 class="center-align">INVOCAR MÉTODO</h5>
        </p>
        <p>
            En la tabla donde listamos creamos un hrf donde nos envie los datos por get aqui enviaremos una variable llamada id_user=id_user dependiento como ud llame el id de cada tabla:<br> 
            <img class="responsive-img"  src="images/actualizar/update.PNG"><br>
            RECUERDE QUE UTILICE EL URL-PATTER EXPLICADO ANTERIORMENTE
        </p>
         <p>
       <h5 class="center-align">VAMOS A EDITAR</h5>
       <img src="images/riete/deadpool3.png" class="responsive-img">
        </p>
        <p>
           Ahora ya que tenemos nuestro datos para enviar por get hay que probar<br> 
            <img class="responsive-img"  src="images/actualizar/edicion.PNG"><br>
            SI HIZO TODO BIEN SIGUIENDO EL PIE DE LA LETRA DEBERIA DE CARGAR LOS DATOS EN LOS INPUT SI NO <BR>
            <img src="images/riete/nelson.png" class="responsive-img"> Por no leer bien....
        </p>
        
        <p>
        <h5 class="center-align">CONTROLADOR <b>Modificar.java</b></h5>
        </p>
        <p>
            Ahora debemos utilizar el controlador de Modificar.java aqui es donde hara la funcion de actualizacion y 
            debe quedar de la siguiente los datos son enviados por post asi que el metodo vamos a utilizar es doPOST:<br>            
            <img class="responsive-img"  src="images/actualizar/metodoup.PNG">
        </p>
        
        <p>
        <h5 class="center-align">MODELO METODO<b>modificarDatos()</b></h5>
        </p>
        <p>
           En el modelo vamos hacer lo siguiente:<br>            
            <img class="responsive-img"  src="images/actualizar/modeloup.PNG">
            <br> La consulta del updte completa si no revise el codigo<b> String miQuery = "update tb_usuario set nombres='"+ nombres + "',apellidos='" + apellidos + "',email='" + email + "',usuario='" + usuario + "',clave='" + clave + "' where id_user='" + id_user +"'";</b>
            <br> no olvide poner el where si no todos los campos se van actualizar<br> <img src="images/riete/nelson.png" class="responsive-img"> 
        </p>
        
       <p>
        <h5 class="center-align">ALERTA DE EXITO </h5>
        </p>
        <p>
           AHORA YA TENIENDO TODOS VAMOS A PROBAR SI SE ACTUALIZA UN REGISTRO:<br>            
           ANTES:<img class="responsive-img"  src="images/actualizar/edicion.PNG"><BR>
           DESPUES:<img class="responsive-img"  src="images/actualizar/nuevosdatos.PNG"><br>
           MENSAJE DE BUENAS NOTICIAS:<BR><img class="responsive-img"  src="images/actualizar/mensaje.PNG"><br>
           LISTA CON REGISTRO ACTUALIZADO: <br><img class="responsive-img"  src="images/actualizar/listadoA.PNG"><br>
        <div class="center-align">
            <img class="responsive-img"  src="images/riete/patricio.png">
        </div>
        </p>
        
     </div>
      <div id="test4" class="col s12">
       <h4 class="center-align">Método Borrar</h4>
        <p>
            <h5 class="center-align">Modelo</h5>
        </p>
        <p>
           Como ultimo proceso vamos a borrar un registro el metodo es el siguiente:<br>          
            <img class="responsive-img"  src="images/borrar/delete.PNG">
        </p>
        
        <p>
        <h5 class="center-align">Controlador <b>Borrar.java</b></h5>
        </p>
        <p>
                Utilizaremos el metodo de envio GET asi que los parametos que vamos a obtener es el id del usuario envio por get como la siguiente manera:<br>          
            <img class="responsive-img"  src="images/borrar/url.PNG">
        </p>
                <p>
               Esto lo capturamos en doGet de nuestro controlador de la siguiente manera:<br>          
            <img class="responsive-img"  src="images/borrar/controlador.PNG">
        </p>
                <p>
        <h5 class="center-align">MENSAJE DE EXITO </h5>
        </p>
        <p>
              Si todo salio bien entonces tiene que ver el siguiente mensaje:<br>          
            <img class="responsive-img"  src="images/borrar/borrado.PNG">
            <br>
        <div class="center-align">
            <img class="responsive-img"  src="images/riete/bob.png" width="500px">
        </div>
                
        </p>
      </div>
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

