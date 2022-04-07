<%-- 
    Document   : primo
    Created on : Aug 30, 2019, 1:13:09 PM
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
        <form name="f1" action="#">
            Ingresar Numero <input type="text" name="n" value="" size="20" />
            <input type="submit" value="Aceptar" name="b1" />
        </form>
        <%
            if(request.getParameter("b1")!=null){
                int n = Integer.parseInt(request.getParameter("n"));
                int flg=0;
                for(int i=1;i<=n;i++){
                    for(int j=2;j<i;j++){
                        if(i%j==0)
                          flg++; 
                        }
                        if(flg==0)
                            out.print("<br>"+i);
                            flg=0;
                }
            }
        
        %>
    </body>
</html>
