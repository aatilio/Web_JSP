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
        <link rel="stylesheet" href="css/logg.css">
    </head>

    <body>
        <header>
            <%@include file="view/layouts/header.jsp"%>
        </header>
        <main>
            <%
                
             String mail="admin@sorian.com", conn ="admin#1.";
             
             String email = request.getParameter("mail");
             String pass = request.getParameter("pas");
             
             
             if(email.equals(mail) && pass.equals(conn)){
                response.sendRedirect("ingreso_inicio.jsp");
                //out.print(nombre + "<br> Correo o contrasña correcta"); 
                //forward page="ingreso_inicio.jsp"
             }else{
                out.print("<br> Correo o contrasña incorrecta"); 
                out.print(email+ "<br>");
                out.print(pass+ "<br>");
             }
         
            %>
        </main>
        <footer>
            <%@include file="view/layouts/footer.jsp"%>
        </footer>
    </body>

</html>

