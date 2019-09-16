/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2019-06-11 02:47:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.HrLoginPage.basicSet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.huatai.dao.BlackUserDao;
import com.huatai.util.CommonUtils;
import com.huatai.dao.UserDao;
import com.huatai.dao.impl.UserDaoImpl;
import com.huatai.dao.impl.BlackUserDaoImpl;
import com.huatai.entity.*;
import java.util.*;

public final class do_005fusermanage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("com.huatai.entity");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.huatai.dao.BlackUserDao");
    _jspx_imports_classes.add("com.huatai.dao.impl.BlackUserDaoImpl");
    _jspx_imports_classes.add("com.huatai.util.CommonUtils");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	//构造实例;黑名单信息处理,即往tb_black_info表里面插入信息,
	BlackUserDao blackuser = new BlackUserDaoImpl();

	//从数据库查询出id，目的就是与前台单选框的name属性值一样，从而可以获得role的值；
	UserDao userDao = new UserDaoImpl();
	List<UserInfo> list = userDao.getAlluser();
	for (UserInfo tempuser : list) {
		//System.out.println(request.getParameter("isshow"+tempuser.getUserid()));
		String temprole = request.getParameter("isshow" + tempuser.getUserid());
		//获得role;若role的值为1,则把该条数据插入黑名单表中,否则不能插入;   1代表(拉黑)不能登录,0代表能登录
		int role;
		if ("拉黑".equals(temprole)) {
			role = 1;
			//通过工具类自动获取全球唯一的id
			String blackid = CommonUtils.getUUid();
			//获得黑用户的userid
			String userid = tempuser.getUserid();
			String account = tempuser.getAccount();
			String pwd = tempuser.getPassword();
			int root = tempuser.getRoot();

			BlackUserInfo bu = new BlackUserInfo(blackid, userid, account, pwd, root, role);
			blackuser.insertblackUser(bu);

		}
	}
	request.setAttribute("blackusermsg", "操作成功!");
	request.getRequestDispatcher("usermanage.jsp").forward(request, response);
	//response.sendRedirect("usermanage.jsp");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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