<%-- 
    Document   : main
    Created on : May 9, 2023, 11:06:58 AM
    Author     : Alan Atilio
--%>



<%! int numMaxEst = 99; %>
<section id="banner">
    <h1>Bienvenido a mi página de inicio de sorian</h1>
    <p>Esta es una pagina de inicio basica en HTML y CSS para JSP</p>
    <a href="#">Leer mas</a>
</section>

<hr>
<%= new java.util.Date() %>
<hr>
<% out.print("Numero maximo de estudiantes por salon es: " + numMaxEst); %>
<br><!-- comment -->
Numero maximo de estudiantes es: <%= numMaxEst %>




