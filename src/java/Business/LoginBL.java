/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import Data.LoginDL;
import Model.Empleado;
import java.util.List;

/**
 *
 * @author Usuario
 */
public class LoginBL {
     LoginDL logindl = new LoginDL(); 
      public List Autenticar(Empleado e) {
        return logindl.Autenticar(e);
    }
}
