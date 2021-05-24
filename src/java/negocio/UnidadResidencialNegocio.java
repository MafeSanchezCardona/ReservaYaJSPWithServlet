/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import identidades.UnidadResidencial;
import java.util.List;
import persistencia.UnidadResidencialDAO;

/**
 *
 * @author Mafe Sanchez
 */
public class UnidadResidencialNegocio {
    
    UnidadResidencialDAO unidadResidencialDAO = new UnidadResidencialDAO();
    
    public List<UnidadResidencial> listUnidadResidencial() {
        return unidadResidencialDAO.listUnidadResidencial();
    }
    
    public boolean createUnidadResidencial(UnidadResidencial unidad) {
        return unidadResidencialDAO.createUnidadResidencial(unidad);
    }
}
