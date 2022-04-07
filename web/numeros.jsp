<%-- 
    Document   : numeros
    Created on : Aug 30, 2019, 4:12:25 PM
    Author     : Ricardo Burgos
--%>

<%@page import="javax.swing.JOptionPane"%>
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
            Numero 1: <input type="text" name="n1" value="" />
            Numero 2: <input type="text" name="n2" value="" />
            <input type="submit" value="Enviar" name="b1" />
        </form>
        <%
            if(request.getParameter("b1")!=null){
               int n1= Integer.parseInt(request.getParameter("n1"));
               int n2= Integer.parseInt(request.getParameter("n2"));
               int m;
               String me="El numero mayor es: ";
               if(n1>n2){
                   m=n1;
                   me+=n1;
               }else{
                   m=n2;
                   me+=n2;
               }
               if(n1==n2){
                   me="Los numeros son iguales";
               }
                out.println(me);
            }
        %>
    </body>
</html>
