
package Controlador;

import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Mostrar extends HttpServlet {
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8"); // para cargar HTML
        // SI NO SE ENCUENTRA NO LLENARA NADA LA TABLA DE VISTA
        Usuario U = new Usuario();//Conexion a la base de datos         
        ArrayList<Usuario> listarUsuario = new ArrayList();
        listarUsuario = U.consultarRegistros();//Consulta el nuevo registro y los almacena en el nuevo array llamado usuarios
        request.getSession().setAttribute("user", listarUsuario);
        // aqui utilizamos la vista donde queremos cargar los datos
        request.getRequestDispatcher("/listarUsuario.jsp").forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
