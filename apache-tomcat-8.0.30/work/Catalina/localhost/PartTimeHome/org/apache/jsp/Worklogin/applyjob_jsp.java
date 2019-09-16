/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2019-05-27 16:03:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Worklogin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.huatai.util.CommonUtils;
import com.huatai.biz.impl.ApplyJobBizImpl;
import com.huatai.biz.ApplyJobBiz;
import com.huatai.biz.impl.UserBizImpl;
import com.huatai.biz.UserBiz;
import com.huatai.biz.impl.ResumeBizImpl;
import com.huatai.biz.ResumeBiz;
import com.huatai.entity.*;
import java.util.Date;
import java.util.*;

public final class applyjob_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("com.huatai.biz.ApplyJobBiz");
    _jspx_imports_classes.add("com.huatai.biz.impl.ResumeBizImpl");
    _jspx_imports_classes.add("com.huatai.biz.impl.UserBizImpl");
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("com.huatai.biz.impl.ApplyJobBizImpl");
    _jspx_imports_classes.add("com.huatai.util.CommonUtils");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	request.setCharacterEncoding("utf-8");
	String applyid = CommonUtils.getUUid();
	//获得简历信息;
	String jobid = request.getParameter("jobid");
	String jtitle = request.getParameter("jtitle");
	String jcreatedate = request.getParameter("jcreatedate");
	//查询出用户id
	String user = (String) request.getSession().getAttribute("workuser");
	UserBiz userbiz = new UserBizImpl();
	UserInfo usid = userbiz.getUserid(user);
	String userid = usid.getUserid();
	//之后查询是否有简历,若有则可以申请,否则不能申请;
	ResumeBiz resumnebiz = new ResumeBizImpl();
	Resume resume = resumnebiz.isExit(userid);
	if (resume != null) {
		//在已有简历的情况下,判断求职表中判断是否存在,要是工作id和个人id同时属于同一条记录,那么就不可以再申请,否者可以申请职位
		ApplyJobBiz applyjobbiz = new ApplyJobBizImpl();
		ApplyJob tempjob = applyjobbiz.isExit(jobid, userid);
		if (tempjob != null) {
			response.getWriter().println("<script type='text/javascript'>alert('已经申请该职位,不能重复申请');</script>");
		} else {
			//往tb_apply_info表中插入数据
			ApplyJob applyjob = new ApplyJob(applyid, jobid, jtitle, userid, jcreatedate);
			ApplyJobBiz applybiz = new ApplyJobBizImpl();

			boolean isSuccess = applybiz.insertApplyJob(applyjob);

			if (isSuccess) {
				response.getWriter().println("<script type='text/javascript'>alert('申请职位成功！');</script>");
			} else {
				response.getWriter().println("<script type='text/javascript'>alert('申请职位失败！');</script>");
			}

		}
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('请完善简历信息');</script>");
	}

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
