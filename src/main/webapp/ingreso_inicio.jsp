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
            <h1>Ejercicios</h1>
            <ol>
                <li><b>1.- Crea un formulario para calcualr el descuento de un producto, se ingresa el precio y el descuento en % y
                        mostrar
                        Precio descuento y TOTAL</b>
                </li>
                <h4>Solucion</h4>

                <form action="#" method="GET">
                    <label for="">Ingrese el precio del producto</label><br>
                    <input type="text" name="precio" placeholder="S/. 0.0"><br>
                    <label for="">Ingrese el descuento en %</label><br>
                    <input type="text" name="descuento" placeholder="0  %"><br>
                    <input type="submit" value="Calcular descuento"> <!-- Agregar botón de envío -->
                </form>

                <%
                    String precio = request.getParameter("precio");
                    String descuento = request.getParameter("descuento");

                    // Verificar si se ha enviado el formulario
                    if (precio != null && descuento != null) {
                        try {
                            float numeroPrecio = Float.parseFloat(precio);
                            float numeroDes = Float.parseFloat(descuento);
                            float descontado = numeroPrecio * (numeroDes / 100);
                            float precioFinal = numeroPrecio - descontado;
            
                            out.print("Monto descontado: " + descontado + "  Soles<br>");
                            out.print("Monto final a pagar: " + precioFinal + " Soles <br>");
                        } catch (NumberFormatException e) {
                            // Manejar la excepción, por ejemplo, mostrar un mensaje de error
                            out.print("El String no puede ser convertido a float");
                        }
                    }
                %><br><br>
                <li><b>2.- Crea un formulario para crear una tabla con n filas y m columnas que se ingresan en el formulario</b></li>
                <h4>Solución</h4>
                <form action="#" method="GET">
                    <label for="">Ingrese el número de filas</label><br>
                    <input type="text" name="filas" placeholder=""><br>
                    <label for="">Ingrese el número de columnas</label><br>
                    <input type="text" name="columnas" placeholder=""><br>
                    <input type="submit" value="Generar tabla"> <!-- Cambiar el valor del botón de envío -->
                </form>

                <%
                   String filas = request.getParameter("filas");
                   String columnas = request.getParameter("columnas");

                   // Verificar si se ha enviado el formulario
                   if (filas != null && columnas != null) {
                       try {
                           int numFilas = Integer.parseInt(filas);
                           int numColumnas = Integer.parseInt(columnas);
           
                           out.println("<table border=\"1\">"); // Inicio de la tabla
           
                           // Generar filas y columnas
                           for (int i = 0; i < numFilas; i++) {
                               out.println("<tr>"); // Inicio de la fila
               
                               for (int j = 0; j < numColumnas; j++) {
                                   out.println("<td>Fila " + (i+1) + ", Columna " + (j+1) + "</td>"); // Celda
                               }
               
                               out.println("</tr>"); // Fin de la fila
                           }
           
                           out.println("</table>"); // Fin de la tabla
                       } catch (NumberFormatException e) {
                           // Manejar la excepción, por ejemplo, mostrar un mensaje de error
                           out.print("El String no puede ser convertido a entero");
                       }
                   }
                %>
                <br><br>
                <li><b>3.- Crea un formulario para ingresar una lista de nombres y realizar un sorteo</b></li><br>
                <h4>Solucion</h4>
                <form action="" method="GET">
                    <label for="">Ingrese la lista de nombres</label><br>
                    <textarea name="lista_nombres" id="" cols="30" rows="10"></textarea><br>
                    <input type="submit" value="Reslizar sorteo">

                </form>
                <% 
                    String lista = request.getParameter("lista_nombres");

                    if (lista != null) {
                        // Separar los nombres por saltos de línea
                        String[] nombres = lista.split("\\r?\\n");
        
                        // Realizar el sorteo
                        if (nombres.length > 0) {
                            int indiceGanador = (int) (Math.random() * nombres.length);
                            String ganador = nombres[indiceGanador].trim();

                            // Mostrar el ganador
                            out.print("El ganador del sorteo es: " + ganador);
                        } else {
                            out.print("No se ha ingresado ningún nombre en la lista.");
                        }
                    }
                %>


            </ol>
        </main>
        
    </body>

</html>

