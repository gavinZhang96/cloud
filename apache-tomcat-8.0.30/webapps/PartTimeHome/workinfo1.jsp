<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import="com.huatai.biz.impl.JobBizImpl"%>
<%@page import="com.huatai.biz.JobBiz"%>
<%@page import="com.huatai.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basepath);
	//System.out.println(request.getAttribute("path"));
%>
<title></title>
</head>
<body>
	<%
		String kind1 = "全职";
		JobBiz jobbiz = new JobBizImpl();
		List<Job> jlist = jobbiz.getAllJob(kind1);
		//System.out.println("list.size=" + list.size());
		//session.setAttribute("jobList", list);

		if (jlist == null) {
			return;
		} else {
			for (Job tempjob3 : jlist) {
				String workinfo3 = "applywork.jsp?winfoid=" + tempjob3.getJobid();
	%>

	<ul>
		<li><a href="<%=request.getAttribute("path")%><%=workinfo3%>">标题:<%=tempjob3.getJtitle()%>&nbsp;&nbsp;&nbsp;岗位:<%=tempjob3.getJwork()%>&nbsp;&nbsp;&nbsp;发布时间:
				<%=tempjob3.getJcreatedate()%></a></li>
	</ul>
	<%
		}
		}
	%>
</body>
</html>