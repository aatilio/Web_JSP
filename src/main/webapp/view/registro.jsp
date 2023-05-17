<%-- 
    Document   : registro
    Created on : 10 may. 2023, 08:56:51
    Author     : Diurno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ClassWeb.Cliente"%>
<!DOCTYPE html>

<div class="conten">
    <div class="center-small">
        <h1 class="form_title">Registro</h1>
        <form action="#" method="GET" class="form">
            <div class="form_group">
                <label for="nombre" class="form_labe"><i class="bi bi-person-lines-fill"></i><span>Nombre</span><sup>*</sup></label>
                <input type="text" id="nombre" name="nombre" class="form_input" placeholder=" " autocomplete="off" required autofocus>
            </div>
            <div class="form_group">
                <label for="apellido" class="form_labe"><i class="bi bi-credit-card-2-front"></i><span>Apellido</span><sup>*</sup></label>
                <input type="text" id="apellido" name="apellido" class="form_input" placeholder=" " autocomplete="off" required>
            </div>
            <div class="form_group">
                <label for="email" class="form_labe"><i class="bi bi-envelope"></i><span>Email</span><sup>*</sup></label>
                <input type="email" id="email" name="email" class="form_input" placeholder=" " autocomplete="off" required>
            </div>
            <div class="form_group">
                <label for="telefono" class="form_labe"><i class="bi bi-phone"></i><span>Telefono</span><sup>*</sup></label>
                <input type="number" id="telefono" name="telefono" class="form_input" placeholder=" " autocomplete="off" required maxlength="9" >
            </div><br>

            <button type="submit" name="registrar" id="registrar" class="form_singup">Registrar</button>
        </form><br>
        <%
            if(request.getParameter("registrar")!=null){
                String n,a,c,t;
                n=request.getParameter("nombre");
                a=request.getParameter("apellido");
                c=request.getParameter("email");
                t=request.getParameter("telefono");

                Cliente cliente=new Cliente(n,a,c,t);
                
                out.println("<h5> Clientes desde los objetos </h5>");
                out.println(cliente.getNombre() + "<br>");
                out.println(cliente.getApellido()+ "<br>");
                out.println(cliente.getCorreo()+ "<br>");
                out.println(cliente.getTelefono()+ "<br>");
            }
        
        %>

        <!--<br><a class="crear-cuenta" href="?m=registro-empresa">Crear una cuenta de empresa</a>-->
    </div>
</div>