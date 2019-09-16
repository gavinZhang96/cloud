<%@ page import="com.huatai.biz.ApplyJobBiz"%>
<%@ page import="com.huatai.biz.impl.ApplyJobBizImpl"%>
<%@ page import="java.util.*"%>
<%@page import="com.huatai.entity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//首先获得传过来的jobid,目的就是获得对应job的所有属性,并且可以与前台单选框的name属性值一样，从而可以获得flg的值；
	String jobid = request.getParameter("jobid");
	//System.out.println("jobid" + jobid);
	ApplyJobBiz apployjob = new ApplyJobBizImpl();

	List<ApplyJob> ajlist = apployjob.getApployJobByjobid(jobid);
	//System.out.println("list.size=" + list.size());
	//session.setAttribute("jobList", list);

	if (ajlist == null) {
		return;
	} else {
		for (ApplyJob tempajob : ajlist) {
			String tempjobid = tempajob.getApplyid();
			String tempflg = request.getParameter("isshow" + tempajob.getApplyid());
			//System.out.println("tempjobid.size=" + tempflg);
			//System.out.println("tempflg.size=" + tempflg);
			int flg = 0;
			if ("同意".equals(tempflg)) {
				//要是同意就要更新applyjob表中分flg属性
				flg = 1;
				ApplyJobBiz applyjobbiz = new ApplyJobBizImpl();
				applyjobbiz.updateApplyJob(tempjobid, flg);
			}

		}
		request.setAttribute("hrmsg", "操作成功!");
		request.getRequestDispatcher("LookFindworkor.jsp").forward(request, response);
	}
%>



