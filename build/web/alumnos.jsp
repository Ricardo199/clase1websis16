<%-- 
    Document   : alumnos
    Created on : Sep 6, 2019, 1:35:21 PM
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
        <h1>Alumnos!</h1>
        <form name="f1" action="#" method="POST">
            Cuantos Alumnos <input type="text" name="n" value="" size="10"/>
            <input type="submit" value="Aceptar" name="b1" />
        </form>
        <br>
        <hr color="blue">
        <% 
           if(request.getParameter("b1")!=null){
               int n = Integer.parseInt(request.getParameter("n"));
               %>
               <form action="#" method="POST">
        <%
               for(int i=1;i<=n;i++){
                   %>
                  Nombre: <input type="text" name="nombre" value="" size="10" />
                  N1: <input type="text" name="n1" value="" size="10" />
                  N2: <input type="text" name="n2" value="" size="10" /><br>                  
                   <%
               }
               %>
               <input type="submit" value="Mostrar" name="b2" />
               </form>
                  <%
           } 
           
           if(request.getParameter("b2")!=null){
               Double is = 1.03;
               Double afp = 5.25;
               Double r = 1.1;
               String[] nom = request.getParameterValues("nombre");
               String[] n2 = request.getParameterValues("n2");               
               int i=0;
               
               for(String v:nom){
                   out.println(v+": "+((Double.parseDouble(n2[i])*is*r)*afp)+"<br>");
                   i++;
               }
           }
        %>
    </body>
</html>
