/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2019-05-21 08:51:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.HrLoginPage.basicSet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;
import com.huatai.dao.UserDao;
import com.huatai.dao.impl.UserDaoImpl;
import com.huatai.entity.*;

public final class usermanage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1491988072000L));
    _jspx_dependants.put("jar:file:/E:/tomcat/apache-tomcat-8.0.30/webapps/PartTimeHome/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098682290000L));
  }

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
    _jspx_imports_classes.add("com.huatai.dao.UserDao");
    _jspx_imports_classes.add("com.huatai.dao.impl.UserDaoImpl");
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
      out.write("<!-- 定时显示提示信息 -->\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tfunction codefans() {\r\n");
      out.write("\t\tvar box = document.getElementById(\"msg\");\r\n");
      out.write("\t\tbox.style.display = \"none\";\r\n");
      out.write("\t}\r\n");
      out.write("\tsetTimeout(\"codefans()\", 3000);\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"panel admin-panel\">\r\n");
      out.write("\t\t<div class=\"panel-head\">\r\n");
      out.write("\t\t\t<strong class=\"icon-reorder\"> 内容列表</strong>\r\n");
      out.write("\t\t\t<!-- 操作提示信息 -->\r\n");
      out.write("\t\t\t");

				String bmsg = "";
				String msgtemp = (String) (request.getAttribute("blackusermsg"));
				//System.out.println(msgtemp);
				if (msgtemp != null) {
					bmsg = (String) (request.getAttribute("blackusermsg"));

				}
			
      out.write("\r\n");
      out.write("\t\t\t<span id=\"msg\" style=\"margin-left: 400px; color: #ff0000;\">");
      out.print(bmsg);
      out.write("</span>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- do_usermanage.jsp是处理是否拉黑,并将拉黑的信息存储到黑名单表中tb_black_info; 1代表不能登录,0代表能登录 -->\r\n");
      out.write("\t\t<form id=\"login\" method=\"get\" action=\"do_usermanage.jsp\">\r\n");
      out.write("\t\t\t<table class=\"table table-hover text-center\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>USERID</th>\r\n");
      out.write("\t\t\t\t\t<th>企业名称或个人用户名</th>\r\n");
      out.write("\t\t\t\t\t<th>权限</th>\r\n");
      out.write("\t\t\t\t\t<th width=\"250px\">是否拉黑</th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");

					UserDao userDao = new UserDaoImpl();
					List<UserInfo> list = userDao.getAlluser();
					//System.out.println("list.size=" + list.size());
					session.setAttribute("userList", list);

					if (list == null) {
						return;
					} else {
						for (UserInfo tempuser : list) {
				
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempuser.getUserid());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(tempuser.getAccount());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t");

						String root = "管理员";
								int temproot = tempuser.getRoot();
								if (2 == temproot) {
									root = "企业用户";
								} else if (3 == temproot) {
									root = "求职者";
								}
					
      out.write("\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(root);
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"button-group radio\">\r\n");
      out.write("\t\t\t\t\t\t\t<label class=\"button active\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"icon icon-check\"></span> <input\r\n");
      out.write("\t\t\t\t\t\t\t\tname=\"isshow");
      out.print(tempuser.getUserid());
      out.write("\" value=\"拉黑\" type=\"radio\"\r\n");
      out.write("\t\t\t\t\t\t\t\tchecked=\"checked\">是\r\n");
      out.write("\t\t\t\t\t\t\t</label> <label class=\"button active\"><span\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"icon icon-times\"></span> <input\r\n");
      out.write("\t\t\t\t\t\t\t\tname=\"isshow");
      out.print(tempuser.getUserid());
      out.write("\" value=\"不拉黑\" type=\"radio\"\r\n");
      out.write("\t\t\t\t\t\t\t\tchecked=\"checked\">否 </label>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
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
      out.write("\r\n");
      out.write("\t\t\t<div class=\"field\"\r\n");
      out.write("\t\t\t\tstyle=\"float: right; margin-top: 10px; margin-right: 50px; margin-bottom: 20px\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<button class=\"button bg-main icon-check-square-o\" type=\"submit\">\r\n");
      out.write("\t\t\t\t\t提交</button>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</form>\r\n");
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