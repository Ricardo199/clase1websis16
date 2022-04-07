<%-- 
    Document   : login
    Created on : Sep 6, 2019, 2:11:55 PM
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
        <h1>Login!</h1>
        <form name="f1" action="#" method="POST">
            <input type="text" name="user" value="" size="20" /><br>
            <input type="password" name="pass" value="" size="20" /><br>
            <input type="submit" value="Aceptar" name="b1" />
        </form>
        <%
            if(request.getParameter("b1")!=null){
                String usr= request.getParameter("user");
                String pass= request.getParameter("pass");
                if(usr.equals("sis16") && pass.equals("123")){
                   /* HttpSession s = request.getSession();
                    s.setAttribute(usr, "sis16");
                    response.sendRedirect("principal.jsp");*/
                    out.println("<script>alert('exito')</script>");
                }else{
                    out.println("<script>alert('fail')</script>");
                }
            }
        %>
    </body>
</html>
