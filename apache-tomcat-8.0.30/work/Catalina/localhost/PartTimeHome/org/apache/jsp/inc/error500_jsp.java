/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2019-05-22 07:30:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.inc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class error500_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gbk\" />\r\n");
      out.write("<title>500 - Not found</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("body {\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("\tpadding: 0;\r\n");
      out.write("\tbackground: #efefef;\r\n");
      out.write("\tfont-family: Georgia, Times, Verdana, Geneva, Arial, Helvetica,\r\n");
      out.write("\t\tsans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div#mother {\r\n");
      out.write("\tmargin: 0 auto;\r\n");
      out.write("\twidth: 943px;\r\n");
      out.write("\theight: 572px;\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div#errorBox {\r\n");
      out.write("\tbackground: url(\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/500.png\")\r\n");
      out.write("\t\tno-repeat top left;\r\n");
      out.write("\twidth: 943px;\r\n");
      out.write("\theight: 572px;\r\n");
      out.write("\tmargin: auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div#errorText {\r\n");
      out.write("\tcolor: #39351e;\r\n");
      out.write("\tpadding: 146px 0 0 446px\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div#errorText p {\r\n");
      out.write("\twidth: 303px;\r\n");
      out.write("\tfont-size: 14px;\r\n");
      out.write("\tline-height: 26px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div.link { /*background:#f90;*/\r\n");
      out.write("\theight: 50px;\r\n");
      out.write("\twidth: 145px;\r\n");
      out.write("\tfloat: left;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div#home {\r\n");
      out.write("\tmargin: 20px 0 0 444px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div#contact {\r\n");
      out.write("\tmargin: 20px 0 0 25px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("h1 {\r\n");
      out.write("\tfont-size: 40px;\r\n");
      out.write("\tmargin-bottom: 35px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"mother\">\r\n");
      out.write("\t\t<div id=\"errorBox\">\r\n");
      out.write("\t\t\t<div id=\"errorText\">\r\n");
      out.write("\t\t\t\t<h1>Sorry..页面没有找到！</h1>\r\n");
      out.write("\t\t\t\t<p>似乎你所寻找的网页已移动或丢失了。\r\n");
      out.write("\t\t\t\t<p>或者也许你只是键入错误了一些东西。</p>\r\n");
      out.write("\t\t\t\t请不要担心，这没事。如果该资源对你很重要，请与管理员联系。\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<p>火星不太安全，我可以免费送你回地球</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/index.jsp\" title=\"返回首页\">返回首页\r\n");
      out.write("\t\t\t\t<div class=\"link\" id=\"home\"></div>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
