<%-- 
    Document   : main
    Created on : May 9, 2023, 11:06:58 AM
    Author     : Alan Atilio
--%>



<%! int numMaxEst = 40; %>
<section id="banner">
    <h1>Bienvenido a mi página de inicio</h1>
    <p>Esta es una página de inicio básica en HTML y CSS para JSP</p>
    <a href="#">Leer más</a>
</section>

<hr>
<%= new java.util.Date() %>
<hr>
<% out.print("Numero maximo de estudiantes por salon es: " + numMaxEst); %>
<br><!-- comment -->
Numero maximo de estudiantes es: <%= numMaxEst %>




