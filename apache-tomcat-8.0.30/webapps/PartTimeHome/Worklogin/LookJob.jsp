<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import="com.huatai.biz.impl.JobBizImpl"%>
<%@page import="com.huatai.biz.JobBiz"%>
<%@page import="com.huatai.entity.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/Hrlogin/pintuer.css">
<link rel="stylesheet" href="../css/Hrlogin/admin.css">
<script src="../js/jquery.js"></script>
<!-- 输入合法性的验证 -->
<script src="../js/pintuer.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder"> 工作列表</strong>
		</div>
		<form id="login" method="get">
			<table class="table table-hover text-center">
				<tr>
					<th>标题</th>
					<th width="250px">岗位</th>
					<th>学历要求</th>
					<th>电话</th>
					<th>发布时间</th>
					<th>操作</th>
				</tr>
				<%
					JobBiz jobbiz = new JobBizImpl();
					List<Job> jlist = jobbiz.getAllJob();
					//System.out.println("list.size=" + list.size());
					//session.setAttribute("jobList", list);

					if (jlist == null) {
						return;
					} else {
						for (Job tempjob : jlist) {
							String infoUrl = "do_Lookjob.jsp?wjobid=" + tempjob.getJobid();
				%>
				<tr>
					<td><%=tempjob.getJtitle()%></td>
					<td><%=tempjob.getJwork()%></td>
					<td><%=tempjob.getJlevel()%></td>
					<td><%=tempjob.getJphone()%></td>
					<td><%=tempjob.getJcreatedate()%></td>
					<td><a href="<%=infoUrl%>">进入</a></td>
				</tr>
				<%
					}
					}
				%>
			</table>
		</form>

		<div>
			<div class="pagelist">
				<a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
					href="">3</a><a href="">下一页</a><a href="">尾页</a>
			</div>
		</div>

	</div>
</body>
</html>