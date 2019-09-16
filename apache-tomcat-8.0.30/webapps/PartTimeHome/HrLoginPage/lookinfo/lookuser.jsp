<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.biz.ResumeBiz"%>
<%@page import="com.huatai.biz.impl.ResumeBizImpl"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../../css/Hrlogin/pintuer.css">
<link rel="stylesheet" href="../../css/Hrlogin/admin.css">
<script src="../../js/jquery.js"></script>
<!-- 输入合法性的验证 -->
<script src="../../js/pintuer.js"></script>
<script type="text/javascript">
		//搜索
		function changesearch() {
		}}
	</script>
</head>
<body>
	<form method="post" action="" id="listform">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 详细信息</strong>
			</div>
			<div class="padding border-bottom" style="float: right">
				<li><input type="text" placeholder="请输入搜索的简历标题" name="keywords"
					class="input"
					style="width: 250px; line-height: 17px; display: inline-block" />

					<a href="javascript:void(0)" class="button border-main icon-search"
					onclick="changesearch()"> 搜索</a></li>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th>账号</th>
					<th>简历标题</th>
					<th>姓名</th>
					<th>电话</th>
					<th>学历</th>
					<th>照片</th>
					<th>求职意向</th>
				</tr>
				<%
					ResumeBiz resumebiz = new ResumeBizImpl();
					List<Resume> resumelist = resumebiz.getAllResume();
					if (resumelist == null) {
						return;
					} else {
						for (Resume tempresume : resumelist) {
							String userid = tempresume.getUserresid();
							UserBiz userbiz = new UserBizImpl();
							UserInfo tempaccount = userbiz.getAccountByUid(userid);
				%>
				<tr>
					<td><font color="#00CC99"><%=tempaccount.getAccount()%></font></td>
					<td><%=tempresume.getRestitle()%></td>
					<td><%=tempresume.getResname()%></td>
					<td><%=tempresume.getResNumber()%></td>
					<td><%=tempresume.getReslevel()%></td>
					<td width="10%"><img width="150" height="90" alt="照片"
						src="/upload/<%=tempresume.getResphote()%>" /></td>
					<td><%=tempresume.getResinterest()%></td>
				</tr>

				<%
					}
					}
				%>

			</table>
		</div>
	</form>
</body>
</html>