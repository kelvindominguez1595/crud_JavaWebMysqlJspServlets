package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class usuario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1.0\"/>\n");
      out.write("  <title>login</title>\n");
      out.write("\n");
      out.write("  <!-- CSS  -->\n");
      out.write("  <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"css/materialize.css\" type=\"text/css\" rel=\"stylesheet\" media=\"screen,projection\"/>\n");
      out.write("  <link href=\"css/style.css\" type=\"text/css\" rel=\"stylesheet\" media=\"screen,projection\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <nav class=\"light-blue lighten-1\" role=\"navigation\">\n");
      out.write("           <div class=\"nav-wrapper container\"><a id=\"logo-container\" class=\"brand-logo\"><img src=\"img/50.jpg\" id=\"miImagen\" width=\"105 px\"></a>\n");
      out.write("      <ul class=\"right hide-on-med-and-down\">\n");
      out.write("        <li><a href=\"menu.jsp\">Regresar</a></li>\n");
      out.write("      </ul>\n");
      out.write("      <ul id=\"nav-mobile\" class=\"sidenav\">\n");
      out.write("        <li><a href=\"#\">Navbar Link</a></li>\n");
      out.write("      </ul>\n");
      out.write("      <a href=\"#\" data-target=\"nav-mobile\" class=\"sidenav-trigger\"><i class=\"material-icons\">menu</i></a>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("  <div class=\"section no-pad-bot\" id=\"index-banner\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <br><br>\n");
      out.write("      <!-- aqui estan los textos -->\n");
      out.write("      \n");
      out.write("      <center><h5>REGISTRAR USUARIO</h5></center> \n");
      out.write("   \n");
      out.write("        <!--Cajas de texto-->\n");
      out.write("        <form action=\"recibir.do\" method=\"POST\">\n");
      out.write("            <h6> Nombres:&nbsp;   <input type=\"text\" size=\"35\" name=\"txtNombres\"  value=\"\"  placeholder=\"Nombres\" required/></h6>\n");
      out.write("             <h6>Apellidos:&nbsp;  <input type=\"text\" size=\"35\" name=\"txtApellidos\" value=\"\" placeholder=\"Apellidos\" required/> </h6>\n");
      out.write("    \n");
      out.write("        <h6> Email:&nbsp; <input type=\"text\" size=\"40\" name=\"txtEmail\" value=\"\" placeholder=\"Ejemplo@gmail.com\" required/></h6>\n");
      out.write("        \n");
      out.write("        <h6> Usuario:&nbsp;  <input type=\"text\" size=\"30\" name=\"txtUsuario\" value=\"\" placeholder=\"Usuario123\" required/> </h6>\n");
      out.write("   \n");
      out.write("        <h6>Ingrese Su Clave:&nbsp;  <input type=\"password\" size=\"20\" name=\"txtClave\" value=\"\" placeholder=\"********\" required/> </h6>\n");
      out.write("   \n");
      out.write("        <h6>Confirme su Clave:&nbsp;  <input type=\"password\" size=\"20\" name=\"txtClave2\" value=\"\" placeholder=\"********\" required/> </h6>\n");
      out.write("   <!--Caja para elejir entre Administrador y Empleado-->\n");
      out.write("   <!--ComboBox-->\n");
      out.write("    <h6>Tipo de Empleado:&nbsp; <select name=\"txtTipo\">\n");
      out.write("        <option>Empleado</option>\n");
      out.write("        <option>Usuario</option>\n");
      out.write("    </select>\n");
      out.write("    </h6>\n");
      out.write("     <br>\n");
      out.write("     <!--Botones del formulario-->\n");
      out.write("      <input type=\"submit\" value=\"ENVIAR DATOS\" name=\"btnEnviar\" />&nbsp;\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("  <footer class=\"page-footer orange\">\n");
      out.write("    <div class=\"footer-copyright\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("      Made by <a class=\"black-text text-lighten-3\">Sistemas 21</a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!--  Scripts-->\n");
      out.write("  <script src=\"https://code.jquery.com/jquery-2.1.1.min.js\"></script>\n");
      out.write("  <script src=\"js/materialize.js\"></script>\n");
      out.write("  <script src=\"js/init.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
