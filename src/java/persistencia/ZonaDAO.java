/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import comunes.Conexion;
import identidades.Zona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mafe Sanchez
 */
public class ZonaDAO {
    
    public List<Zona> listZona() {
        List<Zona> result = new ArrayList<>();
        String query = "select id, nombre, unidad_residencial from zona";
        Connection con = new Conexion().getConexion();
        
        try {
            ResultSet r = con.prepareStatement(query).executeQuery();
            
            while(r.next()){
               Zona zona = new Zona();
               zona.setId(r.getInt("id"));
               zona.setNombre(r.getString("nombre"));
               zona.setUnidadResidencialId(r.getInt("unidad_residencial"));
               result.add(zona);
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
        
        return result;
    }
    
    public boolean createZona(Zona zona){
        boolean result = false;
        String query = "insert into zona(nombre, unidad_residencial) values (?,?) ";
        Connection con = new Conexion().getConexion();
        
        try {
            PreparedStatement pr = con.prepareStatement(query);
            pr.setString(1, zona.getNombre());
            pr.setInt(2, zona.getUnidadResidencialId());
            
            result = pr.execute();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return result;
    }
}
