/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2019-05-27 15:26:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class notice_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<html lang=\"zh-cn\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>兼职之家</title>\r\n");
      out.write("<meta name=\"keyword\" content=\"MyProject\">\r\n");
      out.write("<meta name=\"description\" content=\"善知教育\">\r\n");
      out.write("<meta name=\"author\" content=\"SJ\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/common.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("<script src=\"js/jquery.min.1.11.3.js\"></script>\r\n");
      out.write("<script src=\"js/SuperSlide.2.1.1.js\"></script>\r\n");
      out.write("<script src=\"js/js.js\"></script>\r\n");
      out.write("<!--[if lt IE 9]>\r\n");
      out.write("<script src=\"js/html5.js\"></script>\r\n");
      out.write("<![endif]-->\r\n");
      out.write("<!--[if IE 6]>\r\n");
      out.write("<script src=\"js/png.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("<![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<header class=\"index_header\">\r\n");
      out.write("\t<div class=\"index_header_l\">\r\n");
      out.write("\t\t<img src=\"images/index_03.png\" alt=\"\">\r\n");
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
      out.write("\t\t\t<img src=\"images/index_05.png\" alt=\"\"><span>000-12345678</span>\r\n");
      out.write("\t\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t</dt>\r\n");
      out.write("\t\t<dd>\r\n");
      out.write("</dd>\r\n");
      out.write("\t</dl>\r\n");
      out.write("\t<div class=\"clear\"></div>\r\n");
      out.write("\t</header>\r\n");
      out.write("\t<nav class=\"index_nav\">\r\n");
      out.write("\t<ul class=\"index_nav_ul index_public\">\r\n");
      out.write("\t\t<li><a href=\"index.jsp\">首页</a></li>\r\n");
      out.write("\t\t<li><a href=\"findwork.jsp\">招聘信息</a></li>\r\n");
      out.write("\t\t<li><a href=\"findworkTemp.jsp\">兼职信息</a></li>\r\n");
      out.write("\t\t<li><a href=\"news.jsp\">新闻公告</a></li>\r\n");
      out.write("\t\t<li><a href=\"skill.jsp\">求职技巧</a></li>\r\n");
      out.write("\t\t<li><a href=\"notice.jsp\">系统留言</a></li>\r\n");
      out.write("\t\t<li><a href=\"HrLogin.jsp\">网站维护</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t<!-- banner -->\r\n");
      out.write("\t<div class=\"index_case_banner index_public\">\r\n");
      out.write("\t\t<img src=\"images/xt.gif\" alt=\"\">\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- main -->\r\n");
      out.write("\t<div class=\"case_main index_public\" style=\"height: 400px\">\r\n");
      out.write("\t\t<section class=\"case_left\"> <footer class=\"case_left_t\">\r\n");
      out.write("\t\t<span class=\"case_left_t1\">留言操作</span> <span class=\"case_left_t2\">Message\r\n");
      out.write("\t\t\tOperation</span> </footer>\r\n");
      out.write("\t\t<ul class=\"case_left_ul1\">\r\n");
      out.write("\t\t\t<li><a href=\"msglook.jsp\" class=\"case_left_li_on\" target=\"right\">留言板</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"addnotice.jsp\" class=\"case_left_li_on\"\r\n");
      out.write("\t\t\t\ttarget=\"right\">发布留言</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t\t</section>\r\n");
      out.write("\r\n");
      out.write("\t\t<section class=\"case_right\"> <header class=\"case_right_f\"><!-- 下划线 -->\r\n");
      out.write("\t\t<div class=\"case_right_f_l\">详细内容</div>\r\n");
      out.write("\t\t<div class=\"case_right_f_r\">\r\n");
      out.write("\t\t\t<a href=\"jvascript:;\">首页</a>&gt <a href=\"\">详细内容</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t</header>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"case_right_box1\" style=\"height: 370px\">\r\n");
      out.write("\t\t\t<iframe style=\"border: 0px;\" name=\"right\" width=\"100%\" height=\"100%\"\r\n");
      out.write("\t\t\t\tframeborder=\"1\" scrolling=\"auto\" src=\"msglook.jsp\"> </iframe>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</section>\r\n");
      out.write("\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t</div>\r\n");
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
