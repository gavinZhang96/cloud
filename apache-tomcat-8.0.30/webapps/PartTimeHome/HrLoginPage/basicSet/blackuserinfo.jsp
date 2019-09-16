<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>

<%@page import="com.huatai.dao.BlackUserDao"%>
<%@page
	import="com.huatai.dao.impl.BlackUserDaoImpl,com.huatai.entity.*"%>

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
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder"> 内容列表</strong>
		</div>
		<!-- 查询拉黑的信息从tb_black_info表; 1代表不能登录,0代表能登录 -->
		<table class="table table-hover text-center">
			<tr>
				<th>BLACKID</th>
				<th>USERID</th>
				<th>企业名称或个人用户名</th>
				<th>权限</th>
				<th width="250px">是否拉黑</th>
			</tr>
			<%
				BlackUserDao buserDao = new BlackUserDaoImpl();
				List<BlackUserInfo> bulist = buserDao.getAlluser();
				if (bulist == null) {
					return;
				} else {
					for (BlackUserInfo tempbuser : bulist) {
			%>
			<tr>
				<td><%=tempbuser.getBlackid()%></td>
				<td><%=tempbuser.getUserid()%></td>
				<td><%=tempbuser.getAccount()%></td>
				<%
					String root = "企业用户";
							int temproot = tempbuser.getRoot();
							if (3 == temproot) {
								root = "求职者";
							}
				%>
				<td><%=root%></td>
				<%
					String is = "是";
							int temprole = tempbuser.getRole();
							if (0 == temprole) {
								is = "否";
							}
				%>
				<td><%=is%></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</div>
</body>
</html>