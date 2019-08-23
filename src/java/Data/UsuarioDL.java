/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Usuario
 */
public class UsuarioDL {
     Conexion con =  new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.conectar());
    List datos;

    public List listar() {
        String sql = "select Usuario,Clave from empleado";
        datos = jdbctemplate.queryForList(sql);
        return datos;
    }
     public List buscar(int IdEmpleado) {
        String sql = "select * from empleado where IdEmpleado=" + IdEmpleado;
        datos = this.jdbctemplate.queryForList(sql);
        return datos;
    }

}
