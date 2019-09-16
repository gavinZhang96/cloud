<%@page import="com.huatai.biz.impl.ResumeBizImpl"%>
<%@page import="com.huatai.util.CommonUtils"%>
<%@page import="com.huatai.biz.ResumeBiz"%>
<%@page
	import="com.huatai.entity.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.*,java.util.*,java.io.*,org.apache.commons.fileupload.disk.*"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//获得简历信息;
	String userid = request.getParameter("userid");
	//根据userid查询改简历信息是否已存在,以此判断是否可以完善
	ResumeBiz resumnebiz = new ResumeBizImpl();
	Resume resume = resumnebiz.isExit(userid);
	if (resume != null) {
		if (userid.equals(resume.getUserresid())) {
			request.setAttribute("resumemsg", "简历已经存在,无须创建");
			request.getRequestDispatcher("UpdateInfo.jsp").forward(request, response);
		}
	} else {
		//System.out.println("userid==" + userid);
		String resid = CommonUtils.getUUid();
		String restitle = request.getParameter("restitle");
		String resname = request.getParameter("resname");
		String resnumber = request.getParameter("resnumber");

		int reslevel = Integer.parseInt(request.getParameter("reslevel"));
		String level = "";
		if (1 == reslevel) {
			level = "初中";
		} else if (2 == reslevel) {
			level = "高中";
		} else if (3 == reslevel) {
			level = "本科";
			//System.out.println("reslevel==" + level);
		} else if (4 == reslevel) {
			level = "研究生";
		} else if (5 == reslevel) {
			level = "博士";
		}

		String respicpath = request.getParameter("file");
		int resmoney = Integer.parseInt(request.getParameter("resmoney"));
		String money = "";
		if (1 == resmoney) {
			money = "2000以下";
		} else if (2 == resmoney) {
			money = "2000~4000";
		} else if (3 == resmoney) {
			money = "4000~6000";
			//System.out.println("reslevel==" + level);
		} else if (4 == resmoney) {
			money = "6000~8000";
		} else if (5 == resmoney) {
			money = "8000~10000";
		} else if (6 == resmoney) {
			money = "10K以上";
		}
		String resinterest = request.getParameter("resinterest");
		String restimate = request.getParameter("restimate");

		//System.out.println("resmoney=="+resmoney);

		Resume resum = new Resume(resid, restitle, resname, resnumber, level, respicpath, resinterest, money,
				restimate, userid);
		//添加个人简历
		ResumeBiz biz = new ResumeBizImpl();
		boolean isSuccess = biz.insertResume(resum);
		if (isSuccess) {
			//List<Resume> resumelist = biz.getAllResume();
			//session.setAttribute("resumelist", resumelist);
			response.sendRedirect("LookInfo.jsp");
		} else {
			response.getWriter().println("<script type='text/javascript'>alert('简历信息完善失败！');</script>");
		}
	}
%>

