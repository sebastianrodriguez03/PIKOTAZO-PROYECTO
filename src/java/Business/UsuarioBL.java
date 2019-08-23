/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import Data.UsuarioDL;
import java.util.List;

/**
 *
 * @author Usuario
 */
public class UsuarioBL {
        UsuarioDL usuariodl = new UsuarioDL();

    public List listar() {
        return usuariodl.listar();
    }
}
