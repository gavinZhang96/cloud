/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2019-05-21 08:46:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Companylogin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.huatai.biz.impl.CompanyBizImpl;
import com.huatai.biz.CompanyBiz;
import com.huatai.biz.impl.UserBizImpl;
import com.huatai.biz.UserBiz;
import com.huatai.entity.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.servlet.*;
import java.util.*;
import java.io.*;
import org.apache.commons.fileupload.disk.*;
import java.util.*;

public final class LookInfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("org.apache.commons.fileupload");
    _jspx_imports_packages.add("com.huatai.entity");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("org.apache.commons.fileupload.servlet");
    _jspx_imports_packages.add("org.apache.commons.fileupload.disk");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.huatai.biz.impl.UserBizImpl");
    _jspx_imports_classes.add("com.huatai.biz.CompanyBiz");
    _jspx_imports_classes.add("com.huatai.biz.impl.CompanyBizImpl");
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
      out.write("<link rel=\"stylesheet\" href=\"../css/Hrlogin/pintuer.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/Hrlogin/admin.css\">\r\n");
      out.write("<script src=\"../js/jquery.js\"></script>\r\n");
      out.write("<!-- 输入合法性的验证 -->\r\n");
      out.write("<script src=\"../js/pintuer.js\"></script>\r\n");
      out.write("<script src=\"../js/img.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction callBack1(code, path, msg) {\r\n");
      out.write("\r\n");
      out.write("\t\t$(\"input[name=file]\").val(path);\r\n");
      out.write("\r\n");
      out.write("\t\t$(\"#dressPic\").attr(\"src\", \"/upload/\" + path);\r\n");
      out.write("\r\n");
      out.write("\t\t$(\"#dressPic\").show();\r\n");
      out.write("\r\n");
      out.write("\t\t$(\"#dressPic\").on(\"load\", function() {\r\n");
      out.write("\t\t\tresizeImg(150, 90, \"dressPic\");\r\n");
      out.write("\t\t});\r\n");
      out.write("\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction clickdel() {\r\n");
      out.write("\t\treturn confirm(\"即将删除所有职位及公司简历信息!\");\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"panel admin-panel\">\r\n");
      out.write("\t\t<div class=\"panel-head\" id=\"add\">\r\n");
      out.write("\t\t\t<strong><span class=\"icon-pencil-square-o\"></span>编辑内容</strong>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"body-content\">\r\n");
      out.write("\t\t\t");

				//String delcomid = request.getParameter("compid");
				String comuser = (String) request.getSession().getAttribute("comuser");
				UserBiz userbiz = new UserBizImpl();
				UserInfo userid = userbiz.getUserid(comuser);
				String delcomid = userid.getUserid();
			
      out.write("\r\n");
      out.write("\t\t\t<form method=\"get\" enctype=\"multipart/form-data\"\r\n");
      out.write("\t\t\t\taction=\"del_lookinfo.jsp\" class=\"form-x\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t");

					//查询登录用的对应的简历,并显示
					CompanyBiz Ciz = new CompanyBizImpl();
					Company comlist = Ciz.getComInfoByUCid(delcomid);
					//System.out.println("comlist)=" + list.size());
					if (comlist == null) {
				
      out.write("\r\n");
      out.write("\t\t\t\t<div style=\"margin-left: 200px; color: #c0c0c0\">\r\n");
      out.write("\t\t\t\t\t<center>暂无数据</center>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t");

					} else {

						//System.out.println("list = " + list + ",list.size()=" + list.size());
				
      out.write("\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" value=\"");
      out.print(delcomid);
      out.write("\" name=\"comuid\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"label\">\r\n");
      out.write("\t\t\t\t\t\t<label>企业名称：</label>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"field\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"input w50\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=\"");
      out.print(comlist.getComname());
      out.write("\" name=\"comname\"\r\n");
      out.write("\t\t\t\t\t\t\tdisabled=\"disabled\" />\r\n");
      out.write("\t\t\t\t\t\t<div class=\"tips\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"label\">\r\n");
      out.write("\t\t\t\t\t\t<label>联系人：</label>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"field\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"input w50\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=\"");
      out.print(comlist.getComhrman());
      out.write("\" name=\"comHrman\"\r\n");
      out.write("\t\t\t\t\t\t\tdisabled=\"disabled\" />\r\n");
      out.write("\t\t\t\t\t\t<div class=\"tips\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"label\">\r\n");
      out.write("\t\t\t\t\t\t<label>电话：</label>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"field\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"input w50\" name=\"comphone\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=\"");
      out.print(comlist.getComNumber());
      out.write("\" disabled=\"disabled\" />\r\n");
      out.write("\t\t\t\t\t\t<div class=\"tips\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"label\">\r\n");
      out.write("\t\t\t\t\t\t<label>地址：</label>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"field\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"input w50\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=\"");
      out.print(comlist.getComaddress());
      out.write("\" name=\"comaddress\"\r\n");
      out.write("\t\t\t\t\t\t\tdisabled=\"disabled\" />\r\n");
      out.write("\t\t\t\t\t\t<div class=\"tips\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"label\">\r\n");
      out.write("\t\t\t\t\t\t<label>行业：</label>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"field\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"input w50\" name=\"resnumber\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=\"");
      out.print(comlist.getComkind());
      out.write("\" disabled=\"disabled\" />\r\n");
      out.write("\t\t\t\t\t\t<div class=\"tips\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"label\">\r\n");
      out.write("\t\t\t\t\t\t<label>招聘要求：</label>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"field\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"input w50\"\r\n");
      out.write("\t\t\t\t\t\t\tvalue=\"");
      out.print(comlist.getCominterset());
      out.write("\" name=\"cominterest\"\r\n");
      out.write("\t\t\t\t\t\t\tdisabled=\"disabled\" />\r\n");
      out.write("\t\t\t\t\t\t<div class=\"tips\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"label\">\r\n");
      out.write("\t\t\t\t\t\t<label>公司简介：</label>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"field\">\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"comcontent\" class=\"input\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"height: 200px; border: 1px solid #ddd;\"\r\n");
      out.write("\t\t\t\t\t\t\tdisabled=\"disabled\">");
      out.print(comlist.getRestimate());
      out.write("</textarea>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"tips\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"clear\"></div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"label\">\r\n");
      out.write("\t\t\t\t\t\t<label></label>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"field\">\r\n");
      out.write("\t\t\t\t\t\t<input name=\"action\" type=\"hidden\" value=\"addnews\" />\r\n");
      out.write("\t\t\t\t\t\t<button class=\"button bg-main icon-check-square-o\" type=\"submit\"\r\n");
      out.write("\t\t\t\t\t\t\tonclick='return clickdel()'>删除</button>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t");

					}
				
      out.write("\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
