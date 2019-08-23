/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Usuario
 */
public class ReservacionController {
         ModelAndView mav = new ModelAndView();
    List datos;

    //----Nombre para la url del navegador----
    @RequestMapping("Reservacion.htm")
    public ModelAndView Listar() {
        mav.addObject("lista", datos);//Adicionar lista al ModelAndView
        mav.setViewName("Reservacion");
        return mav;
    }
}
