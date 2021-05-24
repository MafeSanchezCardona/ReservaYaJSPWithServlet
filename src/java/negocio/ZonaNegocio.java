/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import identidades.Zona;
import java.util.List;
import persistencia.ZonaDAO;

/**
 *
 * @author Mafe Sanchez
 */
public class ZonaNegocio {
    ZonaDAO zonaDao = new ZonaDAO();
    
    public List<Zona> listZona() {
        return zonaDao.listZona();
    }
    
    public boolean createZona(Zona zona) {
        return zonaDao.createZona(zona);
    }
}
