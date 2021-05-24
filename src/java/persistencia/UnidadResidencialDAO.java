/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import comunes.Conexion;
import identidades.UnidadResidencial;
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
public class UnidadResidencialDAO {
    
    public List<UnidadResidencial> listUnidadResidencial() {
        List<UnidadResidencial> result = new ArrayList<>();
        String query = "select id, nombre, telefono, direccion, cantidad_aptos from unidad_residencial";
        Connection con = new Conexion().getConexion();
        
        try {
            ResultSet r = con.prepareStatement(query).executeQuery();
            
            while(r.next()){
               UnidadResidencial unidad = new UnidadResidencial();
               unidad.setId(r.getInt("id"));
               unidad.setNombre(r.getString("nombre"));
               unidad.setTelefono(r.getString("telefono"));
               unidad.setDireccion(r.getString("direccion"));
               unidad.setCantidadAptos(r.getInt("cantidad_aptos"));
               result.add(unidad);
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
    
    public boolean createUnidadResidencial(UnidadResidencial unidad){
        boolean result = false;
        String query = "insert into unidad_residencial(nombre, telefono, direccion, cantidad_aptos) values (?,?,?,?) ";
        Connection con = new Conexion().getConexion();
        
        try {
            PreparedStatement pr = con.prepareStatement(query);
            pr.setString(1, unidad.getNombre());
            pr.setString(2, unidad.getTelefono());
            pr.setString(3, unidad.getDireccion());
            pr.setInt(4, unidad.getCantidadAptos());
            
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
