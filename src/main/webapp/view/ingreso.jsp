<%-- 
    Document   : registro
    Created on : 10 may. 2023, 08:56:51
    Author     : Diurno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="conten">
    <div class="center-small">
        <h1 class="form_title">Inicio de sesión</h1>
        <form action="ingreso_pro.jsp" method="POST" class="form">
            <div class="form_group">
                <label for="email" class=""><i class="bi bi-envelope-paper"></i><span>Email</span><sup>*</sup></label>
                <input type="email" id="email" name="mail" class="form_input" placeholder=" " value="" required>
            </div>
            <div class="form_group">
                <label for="password" class=""><i class="bi bi-shield-lock"></i><span>Password</span><sup>*</sup></label>
                <input type="password" id="txtPassword" name="pas" class="form_input" placeholder=" " required >
                <div class="eyePass">
                    <i id="iconoEye" class="bi bi-eye"></i>
                </div>
            </div>
            <div class="form_guardar-cuenta">
                <label class="control control-checkbox"> Remember me
                    <input type="checkbox" name="recordar" onclick="" />
                    <div class="control_indicator"></div>
                </label>
            </div>
            <button name="login" class="form_login">Sing In</button>
        </form><br>
        <a class="crear-cuenta" href="?m=reset">¿Olvidaste tu contraseña?</a>
        <p class="nuevo-usuario">¿No tiene una cuenta?</p>
        <a href="?m=registro"><button class="form_singup">New Sign Up</button></a>
    </div>
</div>