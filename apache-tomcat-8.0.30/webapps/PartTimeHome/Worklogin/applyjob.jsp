<%@page import="com.huatai.util.CommonUtils"%>
<%@page import="com.huatai.biz.impl.ApplyJobBizImpl"%>
<%@page import="com.huatai.biz.ApplyJobBiz"%>
<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page import="com.huatai.biz.impl.ResumeBizImpl"%>
<%@page import="com.huatai.biz.ResumeBiz"%>
<%@page import="com.huatai.entity.*"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
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
%>

