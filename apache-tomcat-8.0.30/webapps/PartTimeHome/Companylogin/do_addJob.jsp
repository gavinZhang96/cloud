<%@page import="com.huatai.biz.impl.JobBizImpl"%>
<%@page import="com.huatai.util.CommonUtils"%>
<%@page import="com.huatai.biz.JobBiz"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<%@page import="com.huatai.biz.CompanyBiz"%>
<%@page import="com.huatai.biz.impl.CompanyBizImpl"%>
<%@page import="com.huatai.entity.*"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//获得登录公司的id;
	String comuser = (String) request.getSession().getAttribute("comuser");
	//查询出登录用户的id,以便后面座位发布职位的外键
	UserBiz userbiz = new UserBizImpl();
	UserInfo userid = userbiz.getUserid(comuser);
	String comid = userid.getUserid();
	//获得登录Id之后，根据comid查询该公司是否已经有公司信息，若已经完善信息，则可以发布职位；若没有，则弹框提示完善信息，
	CompanyBiz companybiz = new CompanyBizImpl();
	Company comInfo = companybiz.isExit(comid);
	//boolean boo = comInfo == null;
	//System.out.println("comInfo!=null" + boo);
	if (comInfo != null) {
		//String comid = (String) request.getAttribute("compid");
		//获取提交的表单数据
		//System.out.println("userid==" + userid);
		String jobid = CommonUtils.getUUid();
		String jtitle = request.getParameter("jtitle");
		String jwork = request.getParameter("jwork");
		String jtime = request.getParameter("jtime");
		int kind = Integer.parseInt(request.getParameter("jkind"));
		String jkind = "";
		if (1 == kind) {
			jkind = "兼职";
		} else if (2 == kind) {
			jkind = "全职";
		}
		int level = Integer.parseInt(request.getParameter("jlevel"));
		String jlevel = "";
		if (1 == level) {
			jlevel = "初中";
		} else if (2 == level) {
			jlevel = "高中";
		} else if (3 == level) {
			jlevel = "本科";
		} else if (4 == level) {
			jlevel = "研究生";
		} else if (5 == level) {
			jlevel = "博士";
		}
		int money = Integer.parseInt(request.getParameter("jmoney"));
		String jmoney = "";
		if (1 == money) {
			jmoney = "2000以下";
		} else if (2 == money) {
			jmoney = "2000~4000";
		} else if (3 == money) {
			jmoney = "4000~6000";
		} else if (4 == money) {
			jmoney = "6000~8000";
		} else if (5 == money) {
			jmoney = "8000~10000";
		} else if (6 == money) {
			jmoney = "10K以上";
		}

		String jaddress = request.getParameter("jaddress");
		String jphone = request.getParameter("jphone");

		//System.out.println("resmoney=="+resmoney);
		Job job = new Job(jobid, jtitle, jwork, jtime, jkind, jlevel, jmoney, jaddress, jphone, comid);

		//添加公司
		JobBiz jobiz = new JobBizImpl();
		boolean isSuccess = jobiz.insertResume(job);
		if (isSuccess) {
			response.sendRedirect("LookEmpInfo.jsp");
		} else {
			response.getWriter().println("<script type='text/javascript'>alert('职位发布失败！');</script>");
		}
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('公司信息未完善！');</script>");
	}
%>

