/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2019-05-22 07:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.HrLoginPage.lookinfo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;
import com.huatai.entity.*;
import com.huatai.biz.ResumeBiz;
import com.huatai.biz.impl.ResumeBizImpl;
import com.huatai.biz.UserBiz;
import com.huatai.biz.impl.UserBizImpl;

public final class lookuser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("com.huatai.entity");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.huatai.biz.impl.ResumeBizImpl");
    _jspx_imports_classes.add("com.huatai.biz.impl.UserBizImpl");
    _jspx_imports_classes.add("com.huatai.biz.ResumeBiz");
    _jspx_imports_classes.add("com.huatai.biz.UserBiz");
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
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\"\r\n");
      out.write("\tcontent=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\" />\r\n");
      out.write("<meta name=\"renderer\" content=\"webkit\">\r\n");
      out.write("<title></title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../../css/Hrlogin/pintuer.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../../css/Hrlogin/admin.css\">\r\n");
      out.write("<script src=\"../../js/jquery.js\"></script>\r\n");
      out.write("<!-- 输入合法性的验证 -->\r\n");
      out.write("<script src=\"../../js/pintuer.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t\t//搜索\r\n");
      out.write("\t\tfunction changesearch() {\r\n");
      out.write("\t\t}}\r\n");
      out.write("\t</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<form method=\"post\" action=\"\" id=\"listform\">\r\n");
      out.write("\t\t<div class=\"panel admin-panel\">\r\n");
      out.write("\t\t\t<div class=\"panel-head\">\r\n");
      out.write("\t\t\t\t<strong class=\"icon-reorder\"> 详细信息</strong>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"padding border-bottom\" style=\"float: right\">\r\n");
      out.write("\t\t\t\t<li><input type=\"text\" placeholder=\"请输入搜索的简历标题\" name=\"keywords\"\r\n");
      out.write("\t\t\t\t\tclass=\"input\"\r\n");
      out.write("\t\t\t\t\tstyle=\"width: 250px; line-height: 17px; display: inline-block\" />\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a href=\"javascript:void(0)\" class=\"button border-main icon-search\"\r\n");
      out.write("\t\t\t\t\tonclick=\"changesearch()\"> 搜索</a></li>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<table class=\"table table-hover text-center\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>账号</th>\r\n");
      out.write("\t\t\t\t\t<th>简历标题</th>\r\n");
      out.write("\t\t\t\t\t<th>姓名</th>\r\n");
      out.write("\t\t\t\t\t<th>电话</th>\r\n");
      out.write("\t\t\t\t\t<th>学历</th>\r\n");
      out.write("\t\t\t\t\t<th>照片</th>\r\n");
      out.write("\t\t\t\t\t<th>求职意向</th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					ResumeBiz resumebiz = new ResumeBizImpl();
					List<Resume> resumelist = resumebiz.getAllResume();
					if (resumelist == null) {
						return;
					} else {
						for (Resume tempresume : resumelist) {
							String userid = tempresume.getUserresid();
							UserBiz userbiz = new UserBizImpl();
							UserInfo tempaccount = userbiz.getAccountByUid(userid);
				
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td><font color=\"#00CC99\">");
      out.print(tempaccount.getAccount());
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempresume.getRestitle());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempresume.getResname());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempresume.getResNumber());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempresume.getReslevel());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"10%\"><img width=\"150\" height=\"90\" alt=\"照片\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"/upload/");
      out.print(tempresume.getResphote());
      out.write("\" /></td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempresume.getResinterest());
      out.write("</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t");

					}
					}
				
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</form>\r\n");
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
