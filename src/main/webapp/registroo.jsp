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
                <h1 class="form_title">Registro prosesar</h1>
                <%
                    if(request.getParameter("registrar")!=null){
                        String n,a,c,t;
                        n=request.getParameter("nombre");
                        a=request.getParameter("apellido");
                        c=request.getParameter("email");
                        t=request.getParameter("telefono");

                        /*USAMOS UN OBJETO DE LA CLASE CLIENTE*/
                        Cliente cliente=new Cliente(n,a,c,t);
                        
                        out.println("<h5> Clientes desde los objetos </h5>");
                        out.println(cliente.getNombre() + "<br>");
                        out.println(cliente.getApellido()+ "<br>");
                        out.println(cliente.getCorreo()+ "<br>");
                        out.println(cliente.getTelefono()+ "<br>");
                        
                        out.println("<hr>");
                        /*CREAMOS LA SESION*/
                        HttpSession sesion=request.getSession();
                        out.println("id de la sesion creada: \t" + sesion.getId());
                        
                        session.setAttribute("nombre", cliente.getNombre());
                        session.setAttribute("apelldo", cliente.getApellido());
                        session.setAttribute("correo", cliente.getCorreo());
                        session.setAttribute("telefono", cliente.getTelefono());
                        
                        /*IMPRIMIMOS EL VALOR DE LAS VARIABLES DE SESION*/
                        out.println("<br> Nombre: \t" + sesion.getAttribute("nombre"));
                        out.println("<br> Apellido: \t" + sesion.getAttribute("apellido"));
                        out.println("<br> Correo: \t" + sesion.getAttribute("correo"));
                        out.println("<br> Telefono: \t" + sesion.getAttribute("telefono"));
                        
                        response.sendRedirect("registroo_1.jsp");
                        
                }

                %>
            </div>
        </main>
        <footer>
            <%@include file="view/layouts/footer.jsp"%>
        </footer>
    </body>

</html>

