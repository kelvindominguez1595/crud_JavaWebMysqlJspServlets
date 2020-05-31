package Modelo;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Conexion {

    
   private Connection cnn = null;

   // Metodo de conexion a nuestra BD
    public Connection obtenerConexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver"); //Drivers de la base de datos
            // Conexión a Mysql
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/planilla?zeroDateTimeBehavior=convertToNull","root" , "");
            return cnn;
           
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        Conexion objeto = new Conexion();
        objeto.obtenerConexion();
    }    
}