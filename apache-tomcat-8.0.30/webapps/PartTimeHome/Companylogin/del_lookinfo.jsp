<%@page import="com.huatai.biz.impl.CompanyBizImpl"%>
<%@page import="com.huatai.biz.CompanyBiz"%>
<%@page import="com.huatai.biz.impl.JobBizImpl"%>
<%@page import="com.huatai.biz.JobBiz"%>
<%@page import="com.huatai.biz.impl.ApplyJobBizImpl"%>
<%@page import="com.huatai.biz.ApplyJobBiz"%>
<%@page
	import="com.huatai.entity.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.*,java.util.*,java.io.*,org.apache.commons.fileupload.disk.*"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	boolean isSuccess = false;
	//获得所登录公司信息的uid;
	String compid = request.getParameter("comuid");
	//System.out.println("1compid是" + compid);
	JobBiz jobbiz = new JobBizImpl();
	List<Job> jobid = jobbiz.getJobidByCid(compid);
	if (jobid != null) {
		for (Job tempjobid : jobid) {
			ApplyJobBiz applyjobbiz = new ApplyJobBizImpl();
			List<ApplyJob> applyjobid = applyjobbiz.getApployJobByjobid(tempjobid.getJobid());
			if (applyjobid != null) {
				for (ApplyJob tempAppjobid : applyjobid) {
					applyjobbiz.deleteApplyJobByAppid(tempAppjobid.getApplyid());
					jobbiz.deletejobByJid(tempjobid.getJobid());
				}
			}
			jobbiz.deletejobByJid(tempjobid.getJobid());
		}
	}
	CompanyBiz companybiz = new CompanyBizImpl();
	isSuccess = companybiz.deleteCompanyByCuId(compid);
	if (isSuccess) {
		request.getRequestDispatcher("UpdateInfo.jsp").forward(request, response);
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('删除失败');</script>");
	}
%>