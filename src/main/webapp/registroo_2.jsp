<%-- 
    Document   : registro
    Created on : 10 may. 2023, 08:58:56
    Author     : Diurno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ClassWeb.Cliente"%>

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
            <div class="center-small">
                <h1 class="form_title">PAGINA 2</h1>
                <%
                        /*CREAMOS LA SESION*/
                        HttpSession sesion=request.getSession();
                        out.println("id de la sesion creada: \t" + sesion.getId());
                        out.println("<hr>");
                     
                        /*IMPRIMIMOS EL VALOR DE LAS VARIABLES DE SESION*/
                        out.println("<br> Nombre2: \t" + sesion.getAttribute("nombre"));
                        out.println("<br> Apellido2: \t" + sesion.getAttribute("apellido"));
                        out.println("<br> Correo2: \t" + sesion.getAttribute("correo"));
                        out.println("<br> Telefono2: \t" + sesion.getAttribute("telefono"))
                %>
            </div>
        </main>
        <footer>
            <%@include file="view/layouts/footer.jsp"%>
        </footer>
    </body>

</html>

