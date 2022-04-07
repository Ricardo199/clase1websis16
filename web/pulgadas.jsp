<%-- 
    Document   : pulgadas
    Created on : Aug 30, 2019, 2:09:22 PM
    Author     : Ricardo Burgos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="#" method="POST">
            Numero en pulgadas: <input type="text" name="n" value="" />
            <input type="submit" value="Enviar" name="b1" />
        </form>
        <%
            if(request.getParameter("b1")!=null){
                Double n = Double.parseDouble(request.getParameter("n"));
                Double cm = n*2.54;
                Double m = cm/100;
                Double km = m/1000;
                out.print("Centimetros: "+ cm+" <br>Metros: "+m+ " <br>Kilometros: "+km);
            }
        %>
    </body>
</html>
