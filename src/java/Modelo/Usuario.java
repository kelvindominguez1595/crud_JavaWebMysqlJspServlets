
package Modelo;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;
import java.util.ArrayList;


public class Usuario extends Conexion{


    Integer id_user;
    String nombres;
    String apellidos;
    String email;
    String usuario;
    String clave;
    String tipo;
    
    Statement state;
    ResultSet result;
  
    public Integer getId_user() {
        return id_user;
    }

    public void setId_user(Integer id_user) {
        this.id_user = id_user;
    }   
    
     public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    // DEBE DE EXISTAR PARA INICIALIZAR EL CONTRUCTOR 
    public Usuario() {
        
    }        
    // CONTRUCTOR O INICIALIZADOR DE LOS METODO GET Y SET
    public Usuario(Integer id_user, String nombres, String apellidos, String email, String usuario, String clave, String tipo) {
        this.id_user = id_user;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.email = email;
        this.usuario = usuario;
        this.clave = clave;
        this.tipo = tipo;
    }
        
    
     //Metodo para insertar datos en la clase usuario
    public boolean insertarDatos(){
        try{
            // Consula Sql
            String miQuery = "INSERT INTO tb_usuario VALUES(null,'" + nombres + "', '" + apellidos + "', '" + email + "', '" + usuario + "', '" + clave + "', '" + tipo + "');";
            int estado; //Estado de la insercio
            state = obtenerConexion().createStatement();
            estado = state.executeUpdate(miQuery);
            if(estado == 1){
                return true;
                 }
            }catch (SQLException ex){
                    Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
                    }
            return false;
        }
    
    
    public boolean eliminarDatos(){
        try{
            String miQuery = "DELETE FROM tb_usuario WHERE id_user='" + id_user +"'";
            int estado = 0;
            state = obtenerConexion().createStatement();
            estado = state.executeUpdate(miQuery);
            if(estado == 1){
                return true;
                 }
            }catch (SQLException ex){
                    Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
                    }
            return false;
        }
   
  
    public ArrayList<Usuario> consultarRegistros(){
        ArrayList<Usuario> user = new ArrayList();        
        try{
            String myQuery=  "SELECT * FROM tb_usuario ORDER BY apellidos DESC";

            state = obtenerConexion().createStatement();
            result = state.executeQuery(myQuery);
            
            while(result.next()){
                user.add(
                        new Usuario( // Aqui llenamos las variables que estan en nuestro contructor
                        result.getInt("id_user"), // asi que las variables del contructor vamos a utilizar 
                        result.getString("nombres"), // aqui solo se llena de informacion
                        result.getString("apellidos"), 
                        result.getString("email"), 
                        result.getString("usuario"), 
                        result.getString("clave"), 
                        result.getString("Tipo")
                        )
                );
            }
        }catch(SQLException e){
          System.out.println("Error. Se han encontrado problemas. \n"  + "Verifique por favor. "+ e);     
        }
        return user;
   }
    
 public Usuario ObtenerDatos(){ // Creo metodo para buscar el id del registro
     Usuario user = null;
  try{
      String miQuery = "SELECT * FROM tb_usuario WHERE id_user = '" + id_user +"'";
      state = obtenerConexion().createStatement();      
      result = state.executeQuery(miQuery);
      if(result.next()){
            user = new Usuario(
            result.getInt("id_user"),
            result.getString("nombres"), 
            result.getString("apellidos"), 
            result.getString("email"), 
            result.getString("usuario"), 
            result.getString("clave"), 
            result.getString("Tipo")
            );
      }
  }catch(SQLException e){
            //Logger.getLogger(Persona.class.getName()).log(Level.SEVERE,null,ex);
          // System.out.println("Error. Se han encontrado problemas. \n"  + "Verifique por favor. "+ e);
          e.printStackTrace();
        }
  return user;
 }

    public boolean modificarDatos(){       
        try{
            String miQuery = "UPDATE tb_usuario SET nombres = '"+ nombres + "', apellidos = '" + apellidos + "', email = '" + email + "', usuario = '" + usuario + "',clave = '" + clave + "' WHERE id_user = '" + id_user +"'";
            int estado; //Estado de la inserccion
            state = obtenerConexion().createStatement();
            estado = state.executeUpdate(miQuery);
            if(estado == 1){
                return true;
                 }
            }catch (SQLException ex){
                    Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println(ex.getMessage());
                    }
            return false;
        }
    
    public boolean actualizar(String id_userp, String apellidosp, String nombresp){
        try{
            int estado = 0;
            String miQuery="update tb_usuario set id_user='" + id_user + "',nombres='" + nombres + "',apellidos='" + apellidos + "' where id_user='" + id_user +"';";
            state = obtenerConexion().createStatement();
            estado = state.executeUpdate(miQuery);
             if(estado == 1){
                return true;
                 }
            }catch (SQLException ex){
                    Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
                    }
            return false;
        }
   
}
  
    
    

   

