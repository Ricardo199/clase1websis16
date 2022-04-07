<%-- 
    Document   : procesar
    Created on : Aug 30, 2019, 12:39:02 PM
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
        <%
            if(request.getParameter("b1")!=null){
                int n=Integer.parseInt(request.getParameter("n"));
                int f=n;
                for(int i=1;i<n;i++){
                    f*=i;
                }
                out.println("El factorial es: "+f);
            }
            %>
    </body>
</html>
