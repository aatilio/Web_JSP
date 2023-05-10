<%-- 
    Document   : vpn
    Created on : May 9, 2023, 11:19:29 AM
    Author     : Alan Atilio
--%>

<%-- Archivo que redirecciona al contenido que se va incrustar dentro del main --%>
<%
String m = request.getParameter("m");
if (m != null) {
    String pagina = "views/" + m + ".jsp"; // variable de página, redireccionada
    File archivo = new File(pagina);
    if (archivo.exists()) {
        RequestDispatcher rd = request.getRequestDispatcher(pagina);
        rd.forward(request, response);
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("views/404.jsp");
        rd.forward(request, response);
    }
} else {
    RequestDispatcher rd = request.getRequestDispatcher("views/home.jsp");
    rd.forward(request, response);
}
%>
