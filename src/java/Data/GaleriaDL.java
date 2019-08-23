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
public class GaleriaDL {
        Conexion con =  new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.conectar());
    List datos;
    
     public List listar() {
        String sql = "SELECT NombrePlato, Imagen FROM `plato` ";
        datos = jdbctemplate.queryForList(sql);
        return datos;
    }
}
