<%-- 
    Document   : impuesto
    Created on : Aug 30, 2019, 4:06:36 PM
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
            Ingreso: <input type="text" name="ing" value="" />
            <input type="submit" value="Enviar" name="b1" />
        </form>
        <%
            if(request.getParameter("b1")!=null){
                Double i = Double.parseDouble(request.getParameter("ing"));
                Double imp=0.0;
                if(i>1000){
                    imp = i*0.05;
                }
                out.println(imp);
            }
        %>
    </body>
</html>
