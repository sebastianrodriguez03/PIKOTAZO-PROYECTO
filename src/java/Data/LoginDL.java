/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.Empleado;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Usuario
 */
public class LoginDL {
     Conexion con =  new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.conectar());
    List datos;
    
    public List Autenticar(Empleado e) {
        String sql = "SELECT COUNT(IdEmpleado) FROM `empleado` WHERE Usuario='"+e.getUsuario()+"' and Clave='"+e.getClave()+"'";
        datos = this.jdbctemplate.queryForList(sql);
        return datos;
    }
}
