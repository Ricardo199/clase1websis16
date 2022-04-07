<%-- 
    Document   : edad
    Created on : Aug 30, 2019, 3:50:39 PM
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
            A&ntilde;os: <input type="text" name="anios" required="true"/>
            Meces: <input type="text" name="meces" value="" required="true" />
            <input type="submit" value="Enviar" name="b1" />
        </form>
        <%
            if(request.getParameter("b1")!=null){
                int a = Integer.parseInt(request.getParameter("anios"));
                int m = Integer.parseInt(request.getParameter("meces"));
               out.println((a*12+m)+"meces");
            }
        %>
    </body>
</html>
