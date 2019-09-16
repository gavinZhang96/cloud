<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import="com.huatai.biz.impl.ResumeBizImpl"%>
<%@page import="com.huatai.biz.ResumeBiz"%>
<%@page import="com.huatai.biz.impl.ApplyJobBizImpl"%>
<%@page import="com.huatai.biz.ApplyJobBiz"%>
<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page import="com.huatai.entity.*"%>
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
	<%
		//根据传过来的jobid,查询出申请该工作的所有人员信息及其他信息
		String user = (String) request.getSession().getAttribute("workuser");
		UserBiz userbiz = new UserBizImpl();
		UserInfo uid = userbiz.getUserid(user);
		String userid = uid.getUserid();
	%>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder"> 内容列表</strong>
		</div>
		<form id="login" method="get" action="do_LookFindworkor.jsp">
			<table class="table table-hover text-center">
				<tr>
					<th>标题</th>
					<th>发布时间</th>
					<th>申请时间</th>
					<th>申请转态</th>
					<th>查看职位详情</th>
				</tr>
				<%
					ApplyJobBiz apployjob = new ApplyJobBizImpl();
					int flg = 0;
					List<ApplyJob> list = apployjob.getApployJobByUserid(userid);
					//System.out.println("list.size=" + list.size());
					//session.setAttribute("jobList", list);

					if (list == null) {
						return;
					} else {
						for (ApplyJob tempajob : list) {
				%>
				<tr>

					<!-- 标题 -->
					<td><%=tempajob.getApplytitle()%></td>
					<!-- 发布时间 -->
					<td><%=tempajob.getAjcreatedate()%></td>
					<!-- 申请时间 -->
					<td><%=tempajob.getApplycreatedate()%></td>
					<!-- 申请转态 -->

					<td><div style="color: red">
							<%
								int tempflg = tempajob.getFlg();
										String applflg = "未审核";
										if (1 == tempflg) {
											applflg = "已通过";
										} 
							%><%=applflg%>
						</div></td>

					<!-- 职位详情 -->
					<%
						String Url = "jobinfo.jsp?wjobid=" + tempajob.getJobid();
					%>
					<td><a href="<%=Url%>">查看</a></td>
					<%
						}
					%>


				</tr>
				<%
					}
				%>
			</table>

		</form>

		<div>
			<div class="pagelist" style="margin-top: 20px;">
				<a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
					href="">3</a><a href="">下一页</a><a href="">尾页</a>
			</div>
		</div>

	</div>
</body>
</html>