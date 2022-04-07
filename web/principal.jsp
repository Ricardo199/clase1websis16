<%-- 
    Document   : principal
    Created on : Sep 6, 2019, 2:28:59 PM
    Author     : Ricardo Burgos
--%>

<%@page session = "true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            HttpSession s = request.getSession();
            if(s.getAttribute("s1")!=null){
                out.println("bienvenid@ "+s.getAttribute("s1"));
            }else{
                response.sendRedirect("login.jsp");
            }
            if(request.getParameter("c")!=null){
                s.removeAttribute("s1");
                s.invalidate();
                 response.sendRedirect("login.jsp");
            }
        %>
        <a href="principal.jsp?c=1">Cerrar Sesion</a>
    </body>
</html>
