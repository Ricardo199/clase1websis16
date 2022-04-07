<%-- 
    Document   : cookies
    Created on : Sep 6, 2019, 2:45:59 PM
    Author     : Ricardo Burgos
--%>

<%@page session="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cookie!</h1>
        <form name="f1" action="#" method="POST">
            <input type="text" name="user" value="" size="20" /><br>
            <input type="submit" value="Guardar Cookie" name="b1" /><br>
            <input type="submit" value="Mostrar Cookie" name="b2" />
        </form>
        <%
            if(request.getParameter("b1")!=null){
                Cookie ck = new Cookie("k1", request.getParameter("user"));
                Cookie ck2 = new Cookie("k2", "hola sis16");
                ck.setMaxAge(60*60*24);
                ck2.setMaxAge(60*60*24);
                response.addCookie(ck);
                response.addCookie(ck2);
            }
            if(request.getParameter("b2")!=null){
                Cookie[] co = request.getCookies();
                for(int i=0; i<co.length; i++){
                    out.println(co[i].getName()+": "+co[i].getValue()+"<br>");
                }
            }
        %>
    </body>
</html>
