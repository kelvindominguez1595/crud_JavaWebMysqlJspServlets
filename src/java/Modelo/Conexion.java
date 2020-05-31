package Modelo;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Conexion {

    
   private Connection cnn = null;

    //Constructor vacio de la clase usuario
    public Connection obtenerConexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver"); //Drivers de la base de datos
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/plantilla?zeroDateTimeBehavior=convertToNull","root" , "");
            return cnn;
           
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        Conexion objeto = new Conexion();
        objeto.obtenerConexion();
    }
    
    
}
