<%-- 
    Document   : registro
    Created on : 10 may. 2023, 08:58:56
    Author     : Diurno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorian</title>
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body>
        <header>
            <%@include file="view/layouts/header.jsp"%>
        </header>
        <main>
            <%
            String nombre, apellido, email, telefono, pass;
            nombre = request.getParameter("nombre");
            apellido = request.getParameter("apellido");
            email = request.getParameter("email");
            telefono = request.getParameter("telefono");
            pass = request.getParameter("pass");
            
out.print(nombre + "<br>"); 
out.print(apellido+ "<br>");
out.print(email+ "<br>");
out.print(telefono+ "<br>");
out.print(pass+ "<br>");

            %>
        </main>
        <footer>
            <%@include file="view/layouts/footer.jsp"%>
        </footer>
    </body>

</html>

