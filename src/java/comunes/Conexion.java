package comunes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mafe Sanchez
 */
public class Conexion {
    Connection con;
    
    static {
        try {
           Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            ex.printStackTrace();
            System.out.println(ex);
        }
    }
    
    public Connection getConexion(){ 
         try {
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaya", "root", "");
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error en conexion BD "+ex);
        }
         
        return con;
    }
    
    public static void main(String[] args) {
        
        Connection con = new Conexion().getConexion();
        
        try {
            ResultSet r = con.prepareStatement("select * from unidad_residencial").executeQuery();
            
            if(r.next()){
                System.out.println("nombre "+ r.getString("nombre"));
            } else {
                System.out.println("No hay datos");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            } 
        }
    }
}
