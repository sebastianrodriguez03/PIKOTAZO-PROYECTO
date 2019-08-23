/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */ 
$(function (){
    
    //alert();
    $('#frm-registro').validate({
       rules:{
           Nombre:{
               required:true,
               number:false,
               accept: "[a-zA-Z]+"
           },
           Apellido:{
               required:true,
               accept: "[a-zA-Z]+",
               number:false
           },
           Direccion:{
               required:true,
               accept: "[a-zA-Z]+"
           },
           Telefono:{
               required:true,
                   number:true,
                   minlength:10,
                   maxlength:10,
                   digits:true

               }, NombrePlato:{
                   required:true,
                   number:false,
               accept: "[a-zA-Z]+"
               
           }, Precio:{
               required:true,
               number:false,
               accept: "[0-9]+",
               digits:true
                
           }, Valor:{
               required:true,
               number:false,
               digits:true,
               accept: "[0-9]+"
           },  Descripcion:{
               required:true,
               number:false,
               accept: "[a-zA-Z]+",
               minlength:10,
               maxlength:10
           },IdCliente:{
               required:true,
               number:false
              
           },IdEmpleado:{
               required:true,
               number:false
           },IdMesa:{
               required:true,
               number:false,
               digits:true
           },Fecha:{
               required:true,
               number:false
           },Domicilio:{
               accept: "[0-9]+",
               required:true,
               number:false,
               digits:true
           },NumeroPersonas:{
              required:true,
              number:false,
              digits:true
           },password:{
              required:true
           },time:{
              required:true
           },password_again: {
             equalTo: "#password"
           }, Correo: {
              required:true,
              email:true
           }
       },
       messages:{
           Nombre:{
               required:'Este campo es obligatorio',
               accept:'Ingresa un Nombre valido'
               
           },
           Apellido:{
               required:'Este campo es obligatorio',
               accept:'Ingresa un Nombre valido'
               
           },
           Direccion:{
               required:'Este campo es obligatorio',
                accept:'Ingresa un Nombre valido'
           },
           Telefono:{
               required:'Este campo es obligatorio',
               number:'Digite un numero',
               minlength:'El telefono debe tener minimo 10 numeros',
               maxlength:'El telefono debe tener maximo 10 numeros'
               
           }, NombrePlato:{
               required:'Este campo es obligatorio',
                accept:'Ingresa un Nombre valido'
               
           }, Precio:{
               required:'Este campo es obligatorio',
               accept:'Ingresa un Nombre valido',
               number:'Digite un numero',
               digits:'Escriba un valor valido'
               
           }, Valor:{
               required:'Este campo es obligatorio',
               accept:'Ingresa un Nombre valido',
               number:'Digite un numero',
               digits:'Escriba un valor valido'   
               
           }, Descripcion:{
               required:'Este campo es obligatorio',
               accept:'Ingresa un Nombre valido',
               minlength:'la descripcion debe tener minimo 10 caracteres',
               maxlength:'la descripcion debe tener maximo 50 caracteres '
               
           },IdCliente:{
               required:'Este campo es obligatorio'
           },IdEmpleado:{
               required:'Este campo es obligatorio'
           },IdMesa:{
               required:'Este campo es obligatorio',
               number:'Digite un numero'          
           },Fecha:{
               required:'Este campo es obligatorio'
           },Correo:{
               required:'Este campo es obligatorio',
               email:'Ingresa un correo valido'
           },Domicilio:{
               required:'Este campo es obligatorio',
               number:'Digite un numero',
               accept:'Ingresa un Nombre valido',
               digits:'Escriba un valor valido'
           },NumeroPersonas:{
               required:'Este campo es obligatorio',
               number:'Digite un numero',
               accept:'Ingresa un Nombre valido',
               digits:'Escriba un valor valido'
           },password:{
               required:'Este campo es obligatorio'
           },password_again:{
               required:'Este campo es obligatorio',
               equalTo:'Las Contraseñas no coinciden'
           }
       }
        
    });
})
$('#validate').click(function() {

    var regex = /[\w-\.]{2,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;

    if (regex.test($('#Correo').val().trim())) {
       

    } else {
        alert('La direccón de correo no es válida');
    }
});
jQuery.validator.addMethod("accept", function(value, element, param) {
  return value.match(new RegExp("." + param + "$"));
});