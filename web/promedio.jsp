<%-- 
    Document   : promedio
    Created on : Aug 30, 2019, 2:39:06 PM
    Author     : Ricardo Burgos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="#" method="POST">
           <%
               for(int i=0;i<10;i++){
                   out.write("<br>Numero: <input type='text' name='txt'/>");
               }
           %>
            <input type="submit" value="enviar" name="b1" />
        </form>
        <%
            if(request.getParameter("b1")!=null){
                String[] n = request.getParameterValues("txt");
                int r=0;
              for(int i=0;i<n.length;i++){
                  r=r+Integer.parseInt(n[i]);
              }
                out.println(r/n.length);
            }
        %>
    </body>
</html>
