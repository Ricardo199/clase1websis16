package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class alumnos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Alumnos!</h1>\n");
      out.write("        <form name=\"f1\" action=\"#\" method=\"POST\">\n");
      out.write("            Cuantos Alumnos <input type=\"text\" name=\"n\" value=\"\" size=\"10\"/>\n");
      out.write("            <input type=\"submit\" value=\"Aceptar\" name=\"b1\" />\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <hr color=\"blue\">\n");
      out.write("        ");
 
           if(request.getParameter("b1")!=null){
               int n = Integer.parseInt(request.getParameter("n"));
               
      out.write("\n");
      out.write("               <form action=\"#\" method=\"POST\">\n");
      out.write("        ");

               for(int i=1;i<=n;i++){
                   
      out.write("\n");
      out.write("                  Nombre: <input type=\"text\" name=\"nombre\" value=\"\" size=\"10\" />\n");
      out.write("                  N1: <input type=\"text\" name=\"n1\" value=\"\" size=\"10\" />\n");
      out.write("                  N2: <input type=\"text\" name=\"n2\" value=\"\" size=\"10\" /><br>                  \n");
      out.write("                   ");

               }
               
      out.write("\n");
      out.write("               <input type=\"submit\" value=\"Mostrar\" name=\"b2\" />\n");
      out.write("               </form>\n");
      out.write("                  ");

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
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
