<%-- 
    Document   : registro
    Created on : 10 may. 2023, 08:56:51
    Author     : Diurno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="conten">
    <div class="center-small">
        <h1 class="form_title">Sing Up</h1>
        <form action="registroo.jsp" method="POST" class="form">
            <div class="form_group">
                <input type="text" id="nombre" name="nombre" class="form_input" placeholder=" " autocomplete="off" required autofocus>
                <label for="nombre" class="form_label"><i class="bi bi-person-lines-fill"></i><span>Name</span><sup>*</sup></label>
            </div>
            <div class="form_group">
                <input type="text" id="apellido" name="apellido" class="form_input" placeholder=" " autocomplete="off" required>
                <label for="apellido" class="form_label"><i class="bi bi-credit-card-2-front"></i><span>last name</span><sup>*</sup></label>
            </div>
            <div class="form_group">
                <input type="email" id="email" name="email" class="form_input" placeholder=" " autocomplete="off" required>
                <label for="email" class="form_label"><i class="bi bi-envelope"></i><span>Email</span><sup>*</sup></label>
            </div>
            <div class="form_group">
                <input type="number" id="telefono" name="telefono" class="form_input" placeholder=" " autocomplete="off" required maxlength="9" >
                <label for="telefono" class="form_label"><i class="bi bi-phone"></i><span>Telefono</span><sup>*</sup></label>
            </div>
            <div class="form_group">
                <input type="password" id="txtPassword" name="pass" class="form_input" placeholder=" " required>
                <label for="password" class="form_label form_label-pass"><i class="bi bi-shield-lock"></i><span>Password</span><sup>*</sup></label>
                <div class="eyePass">
                    <i id="iconoEye" class="bi bi-eye"></i>
                </div>
            </div>
            <div class="form_guardar-cuenta">
                
                
            </div>
            <button type="submit" name="registrar" id="registrar" class="form_singup-disabled">Registrar</button>
        </form><br>
        
        <!--<br><a class="crear-cuenta" href="?m=registro-empresa">Crear una cuenta de empresa</a>-->
    </div>
</div>