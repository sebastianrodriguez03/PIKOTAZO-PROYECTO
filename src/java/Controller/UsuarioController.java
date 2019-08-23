/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.EmpleadoBL;
import Model.Empleado;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Usuario
 */
public class UsuarioController {
     ModelAndView mav = new ModelAndView();
    EmpleadoBL empleadobl = new EmpleadoBL();
    int IdEmpleado;
    List datos;

    //----Nombre para la url del navegador----
    @RequestMapping("indexUsuario.htm")

    public ModelAndView Listar() {
        datos = empleadobl.listar();//Instanciar clase de negocio
        mav.addObject("lista", datos);//Adicionar lista al ModelAndView
        mav.setViewName("indexUsuario");
        return mav;
    } 
     @RequestMapping(value = "login.htm", method = RequestMethod.GET)

    public ModelAndView Agregar() {

        mav.addObject(new Empleado());
        datos = empleadobl.listar();//Instanciar clase de negocio
        mav.setViewName("login");
        return mav;
    }

    @RequestMapping(value = "login.htm", method = RequestMethod.POST)

    public ModelAndView Agregar(Empleado e) {

        empleadobl.insertar(e);
        return new ModelAndView("redirect:/indexUsuario.htm");
    }

}
