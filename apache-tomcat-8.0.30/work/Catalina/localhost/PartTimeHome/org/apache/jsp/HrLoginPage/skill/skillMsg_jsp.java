/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2019-05-22 07:34:47 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.HrLoginPage.skill;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.huatai.biz.impl.skillBizImpl;
import com.huatai.biz.skillBiz;
import com.huatai.entity.skill;
import java.util.Date;
import java.util.*;

public final class skillMsg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.huatai.biz.impl.skillBizImpl");
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("com.huatai.biz.skillBiz");
    _jspx_imports_classes.add("com.huatai.entity.skill");
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
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tfunction clickdel() {\r\n");
      out.write("\t\treturn confirm(\"删除请点击确认\");\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<form method=\"post\" action=\"\" id=\"listform\">\r\n");
      out.write("\t\t<div class=\"panel admin-panel\">\r\n");
      out.write("\t\t\t<div class=\"panel-head\">\r\n");
      out.write("\t\t\t\t<strong class=\"icon-reorder\"> 内容列表</strong> <a href=\"\"\r\n");
      out.write("\t\t\t\t\tstyle=\"float: right; display: none;\">添加字段</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"padding border-bottom\">\r\n");
      out.write("\t\t\t\t<ul class=\"search\" style=\"padding-left: 10px;\">\r\n");
      out.write("\t\t\t\t\t<li><a class=\"button border-main icon-plus-square-o\"\r\n");
      out.write("\t\t\t\t\t\thref=\"skill_add.jsp\"> 添加内容</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<li style=\"float: right;\"><input type=\"text\"\r\n");
      out.write("\t\t\t\t\t\tplaceholder=\"请输入搜索关键字\" name=\"keywords\" class=\"input\"\r\n");
      out.write("\t\t\t\t\t\tstyle=\"width: 250px; line-height: 17px; display: inline-block\" />\r\n");
      out.write("\t\t\t\t\t\t<a href=\"javascript:void(0)\"\r\n");
      out.write("\t\t\t\t\t\tclass=\"button border-main icon-search\"> 搜索</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<table class=\"table table-hover text-center\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th width=\"30%\">种类</th>\r\n");
      out.write("\t\t\t\t\t<th width=\"50%\">内容</th>\r\n");
      out.write("\t\t\t\t\t<th width=\"20%\">更新时间</th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					skillBiz skillbiz = new skillBizImpl();
					List<skill> sklist = skillbiz.getAllSkill();
					if (sklist == null) {
						return;
					} else {
						for (skill tempsk: sklist) {
				
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempsk.getSkkind());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempsk.getSkcontent());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempsk.getSkcreatedate());
      out.write("</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					}
					}
				
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"8\"><div class=\"pagelist\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"\">上一页</a> <span class=\"current\">1</span><a href=\"\">2</a><a\r\n");
      out.write("\t\t\t\t\t\t\t\thref=\"\">3</a><a href=\"\">下一页</a><a href=\"\">尾页</a>\r\n");
      out.write("\t\t\t\t\t\t</div></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
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