/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2019-06-11 07:40:37 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;
import com.huatai.entity.*;
import com.huatai.dao.NewsDao;
import com.huatai.dao.impl.NewsDaoImpl;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.huatai.biz.impl.JobBizImpl;
import com.huatai.biz.JobBiz;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/bottompage.jsp", Long.valueOf(1558837057841L));
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
    _jspx_imports_classes.add("com.huatai.biz.impl.JobBizImpl");
    _jspx_imports_classes.add("com.huatai.dao.impl.NewsDaoImpl");
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("com.huatai.biz.JobBiz");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
    _jspx_imports_classes.add("com.huatai.dao.NewsDao");
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
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<!--[if IE 6]><script src=\"js/png.js\"></script><![endif]-->\r\n");
      out.write("<!--[if lt IE 9]><script src=\"js/html5.js\"></script><![endif]-->\r\n");
      out.write("<html lang=\"zh-cn\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>兼职之家</title>\r\n");
      out.write("<meta name=\"keyword\" content=\"MyProject\">\r\n");
      out.write("<meta name=\"description\" content=\"教育\">\r\n");
      out.write("<meta name=\"author\" content=\"SJ\">\r\n");

	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basepath);
	//System.out.println(request.getAttribute("path"));

      out.write("\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.print(request.getAttribute("path"));
      out.write("css/common.css\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.print(request.getAttribute("path"));
      out.write("css/style.css\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.print(request.getAttribute("path"));
      out.write("css/login.css\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.print(request.getAttribute("path"));
      out.write("css/animate-custom.css\">\r\n");
      out.write("<script src=\"");
      out.print(request.getAttribute("path"));
      out.write("js/jquery.min.1.11.3.js\"></script>\r\n");
      out.write("<script src=\"");
      out.print(request.getAttribute("path"));
      out.write("js/SuperSlide.2.1.1.js\"></script>\r\n");
      out.write("<script src=\"");
      out.print(request.getAttribute("path"));
      out.write("js/js.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(document).ready(function() {\r\n");
      out.write("\t\t$(\".slideBox\").slide({\r\n");
      out.write("\t\t\tmainCell : \".bd ul\",\r\n");
      out.write("\t\t\teffect : \"left\",\r\n");
      out.write("\t\t\tautoPlay : true\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\tjQuery(\".slideGroup1 .slideBox\").slide({\r\n");
      out.write("\t\t\tmainCell : \"ul\",\r\n");
      out.write("\t\t\tvis : 4,\r\n");
      out.write("\t\t\tprevCell : \".sPrev\",\r\n");
      out.write("\t\t\tnextCell : \".sNext\",\r\n");
      out.write("\t\t\teffect : \"leftLoop\"\r\n");
      out.write("\t\t});\r\n");
      out.write("\t});\r\n");
      out.write("\t//-- 定时显示提示信息 \r\n");
      out.write("\tfunction codefans() {\r\n");
      out.write("\t\tvar box = document.getElementById(\"msg\");\r\n");
      out.write("\t\tbox.style.display = \"none\";\r\n");
      out.write("\t}\r\n");
      out.write("\tsetTimeout(\"codefans()\", 3000);\r\n");
      out.write("\r\n");
      out.write("\tfunction recodefans() {\r\n");
      out.write("\t\tvar box = document.getElementById(\"remsg\");\r\n");
      out.write("\t\tbox.style.display = \"none\";\r\n");
      out.write("\t}\r\n");
      out.write("\tsetTimeout(\"recodefans()\", 3000);\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<header class=\"index_header\">\r\n");
      out.write("\t<div class=\"index_header_l\">\r\n");
      out.write("\t\t<img src=\"");
      out.print(request.getAttribute("path"));
      out.write("images/index_03.png\" alt=\"\">\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<ul class=\"index_header_l2\">\r\n");
      out.write("\t\t<li>重信誉</li>\r\n");
      out.write("\t\t<li>·</li>\r\n");
      out.write("\t\t<li>高质量</li>\r\n");
      out.write("\t\t<li>·</li>\r\n");
      out.write("\t\t<li>凭实力</li>\r\n");
      out.write("\t\t<li>·</li>\r\n");
      out.write("\t\t<li>强服务</li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t<dl class=\"index_header_r\">\r\n");
      out.write("\t\t<dt>\r\n");
      out.write("\t\t\t<img src=\"");
      out.print(request.getAttribute("path"));
      out.write("images/index_05.png\"\r\n");
      out.write("\t\t\t\talt=\"\"><span>000-12345678</span>\r\n");
      out.write("\t\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t</dt>\r\n");
      out.write("\t\t<dd>兼职之家24小时全国服务热线，欢迎来电咨询！</dd>\r\n");
      out.write("\t</dl>\r\n");
      out.write("\t<div class=\"clear\"></div>\r\n");
      out.write("\t</header>\r\n");
      out.write("\t<nav class=\"index_nav\">\r\n");
      out.write("\t<ul class=\"index_nav_ul index_public\">\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(request.getAttribute("path"));
      out.write("index.jsp\">首页</a></li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(request.getAttribute("path"));
      out.write("findwork.jsp\">招聘信息</a></li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(request.getAttribute("path"));
      out.write("findworkTemp.jsp\">兼职信息</a></li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(request.getAttribute("path"));
      out.write("news.jsp\">新闻公告</a></li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(request.getAttribute("path"));
      out.write("skill.jsp\">求职技巧</a></li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(request.getAttribute("path"));
      out.write("notice.jsp\">系统留言</a></li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(request.getAttribute("path"));
      out.write("HrLogin.jsp\">网站维护</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t<!-- banner -->\r\n");
      out.write("\t<div class=\"index_banner\">\r\n");
      out.write("\t\t<div id=\"slideBox\" class=\"slideBox\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"bd\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a target=\"_blank\"><img\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"");
      out.print(request.getAttribute("path"));
      out.write("images/zg1.jpg\" /></a></li>\r\n");
      out.write("\t\t\t\t\t<li><a target=\"_blank\"><img\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"");
      out.print(request.getAttribute("path"));
      out.write("images/index_09.png\" /></a></li>\r\n");
      out.write("\t\t\t\t\t<li><a target=\"_blank\"><img\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"");
      out.print(request.getAttribute("path"));
      out.write("images/jz1.jpg\" /></a></li>\r\n");
      out.write("\t\t\t\t\t<li><a target=\"_blank\"><img\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"");
      out.print(request.getAttribute("path"));
      out.write("images/jz3.jpg\" /></a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"index_style3\">\r\n");
      out.write("\t\t<div class=\"index_public\">\r\n");
      out.write("\t\t\t<div class=\"index_style3_l\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li class=\"index_style3_l_on\">新闻公告</li>\r\n");
      out.write("\t\t\t\t\t<li>兼职信息</li>\r\n");
      out.write("\t\t\t\t\t<li>招聘信息</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t<div class=\"index_style3_l_box\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"index_style3_l_box1\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"");
      out.print(request.getAttribute("path"));
      out.write("images/xw.png\"\r\n");
      out.write("\t\t\t\t\t\t\talt=\"\">\r\n");
      out.write("\t\t\t\t\t\t");

							NewsDao newsDao = new NewsDaoImpl();
							List<News> list = newsDao.getAllnews();
							if (list == null) {
								return;
							} else {
								for (News tempnew : list) {
									String infoUrl = "new_massage.jsp?indexnid=" + tempnew.getNid();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t");

							}
							}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"index_style3_l_box1\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"");
      out.print(request.getAttribute("path"));
      out.write("images/jz12.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\talt=\"\">\r\n");
      out.write("\t\t\t\t\t\t");

							String kind2 = "兼职";
							JobBiz jobbiz2 = new JobBizImpl();
							List<Job> jlist2 = jobbiz2.getAllJob(kind2);
							//System.out.println("list.size=" + list.size());
							if (jlist2 == null) {
								return;
							} else {
								for (Job tempjob2 : jlist2) {
									String workinfo2 = "applywork.jsp?winfoid=" + tempjob2.getJobid();
						
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t");

							}
							}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"index_style3_l_box1\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"");
      out.print(request.getAttribute("path"));
      out.write("images/zp1.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\talt=\"\">\r\n");
      out.write("\t\t\t\t\t\t");

							String kind1 = "全职";
							JobBiz jobbiz1 = new JobBizImpl();
							List<Job> jlist1 = jobbiz1.getAllJob(kind1);
							//System.out.println("list.size=" + list.size());
							if (jlist1 == null) {
								return;
							} else {
								for (Job tempjob1 : jlist1) {
									String workinfo1 = "applywork.jsp?winfoid=" + tempjob1.getJobid();
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							}
							}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"index_style3_r\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"container\" id=\"container_demo\">\r\n");
      out.write("\t\t\t\t\t<a class=\"hiddenanchor\" id=\"toregister\"></a> <a\r\n");
      out.write("\t\t\t\t\t\tclass=\"hiddenanchor\" id=\"tologin\"></a>\r\n");
      out.write("\t\t\t\t\t<div id=\"wrapper\">\r\n");
      out.write("\t\t\t\t\t\t<!-- 登录 -->\r\n");
      out.write("\t\t\t\t\t\t<div id=\"loginCss\" class=\"animate form\">\r\n");
      out.write("\t\t\t\t\t\t\t<!-- 显示服务器端登录反馈回来的出错信息 -->\r\n");
      out.write("\t\t\t\t\t\t\t");

								String logmsg = "";
								String msglogtemp = (String) (request.getAttribute("indexmsg"));
								if (msglogtemp != null) {
									logmsg = (String) (request.getAttribute("indexmsg"));
								}
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"index_style3_r_top\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span>用户登录</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<form id=\"login\" method=\"post\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\taction=\"");
      out.print(request.getAttribute("path"));
      out.write("DoPage/do_indexlogin.jsp\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table id=\"inputs\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"pic\" class=\"userpic\">用户名:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><input id=\"username\" type=\"text\" name=\"username\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"请输入企业名称或个人用户名\" required></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"pic\" class=\"pwdpic\">密 码:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><input id=\"password\" type=\"password\" name=\"password\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"请输入密码\" required></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"pic\" class=\"workpic\"><p style=\"margin-top: 10px\">角色:</p></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><input id=\"workor\" type=\"radio\" name=\"workor\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width: 50px\" value=\"企业用户\" checked>企业用户 <input\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tid=\"workor\" type=\"radio\" name=\"workor\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width: 50px; margin-top: 10px\" value=\"求职用户\">求职用户\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<fieldset id=\"loginactions\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" id=\"submit\" value=\"登录\"> <input\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\ttype=\"reset\" id=\"reset\" value=\"重置\"> <a\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\thref=\"#toregister\"> 注册</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<span id=\"msg\" style=\"margin-left: 120px; color: #ff0000\">");
      out.print(logmsg);
      out.write("</span>\r\n");
      out.write("\t\t\t\t\t\t<!-- 注册 -->\r\n");
      out.write("\t\t\t\t\t\t<div id=\"registerCss\" class=\"animate form\">\r\n");
      out.write("\t\t\t\t\t\t\t<!-- 显示服务器端注册反馈回来的出错信息 -->\r\n");
      out.write("\t\t\t\t\t\t\t");

								String regmsg = "";
								String regmsgtemp = (String) (request.getAttribute("indexregmsg"));

								if (regmsgtemp != null) {
									regmsg = (String) (request.getAttribute("indexregmsg"));
								}
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"index_style3_r_top\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span>用户注册</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<form id=\"register\" method=\"post\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\taction=\"");
      out.print(request.getAttribute("path"));
      out.write("DoPage/do_indexregister.jsp\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table id=\"inputs\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"pic\" class=\"reuserpic\">用户名:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><input id=\"username\" type=\"text\" name=\"reusername\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"请输入企业名称或个人用户名\" required></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"pic\" class=\"repwdpic\">密 &nbsp;&nbsp;码:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><input id=\"password\" type=\"password\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tname=\"repassword\" placeholder=\"请输入密码\" required></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"pic\" class=\"repwdpic\">确认密码:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><input id=\"password\" type=\"password\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tname=\"repassword1\" placeholder=\"请再次输入密码\" required></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"pic\" class=\"reworkpic\"><p\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin-top: 10px\">角色:</p></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><input id=\"workor\" type=\"radio\" name=\"reworkor\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width: 50px\" value=\"企业用户\" checked>企业用户 <input\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tid=\"workor\" type=\"radio\" name=\"reworkor\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width: 50px; margin-top: 10px\" value=\"求职用户\">求职用户</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<fieldset id=\"registeractions\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" id=\"submit\" value=\"注册\"> <a\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\thref=\"#tologin\" style=\"float: right; margin-right: 10px\">去登录...</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<span id=\"remsg\" style=\"margin-left: 50px; color: #ff0000\">");
      out.print(regmsg);
      out.write("</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- 页尾 -->\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<footer class=\"index_footer\">\r\n");
      out.write("\t<div class=\"index_footer_box index_public\">\r\n");
      out.write("\t\t<div class=\"index_footer_l\">\r\n");
      out.write("\t\t\t<img src=\"images/index1_03.png\" alt=\"\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"index_footer_c\">\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"https://www.liepin.com/\">猎聘网</a></li>\r\n");
      out.write("\t\t\t\t<li>|</li>\r\n");
      out.write("\t\t\t\t<li><a href=\"http://ts.zhaopin.com/jump/index.html\">智联招聘</a></li>\r\n");
      out.write("\t\t\t\t<li>|</li>\r\n");
      out.write("\t\t\t\t<li><a href=\"http://www.51job.com/\">前程无忧</a></li>\r\n");
      out.write("\t\t\t\t<li>|</li>\r\n");
      out.write("\t\t\t\t<li><a href=\"http://www.58.com/job/\">58同城招聘</a></li>\r\n");
      out.write("\t\t\t\t<li>|</li>\r\n");
      out.write("\t\t\t\t<li><a href=\"http://www.ganji.com/zhaopin/\">赶集网招聘</a></li>\r\n");
      out.write("\t\t\t\t<li>|</li>\r\n");
      out.write("\t\t\t\t<li><a href=\"http://www.chinahr.com/beijing/\">中华英才网</a></li>\r\n");
      out.write("\t\t\t\t<li>|</li>\r\n");
      out.write("\t\t\t\t<li><a href=\"http://www.cjol.com/\">中国人才热线</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t\t<div>\r\n");
      out.write("\t\t\t\t版权所有 © 华北科技学院15届信管1班<br /> \r\n");
      out.write("\t\t\t\t地址:华北科技学院\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");
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
