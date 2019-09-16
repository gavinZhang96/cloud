<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.dao.ModelDao"%>
<%@page import="com.huatai.dao.impl.ModelDaoImpl"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		<!-- 查询所有的模板 -->
		<table class="table table-hover text-center">
			<tr>
				<th width="25%">模板名称</th>
				<th width="50%">模板介绍</th>
				<th width="25%">上传时间 </th>
			</tr>
			<%
				ModelDao newsDao = new ModelDaoImpl();
				List<Model> modlist = newsDao.getAllmodels();
				if (modlist == null) {
					return;
				} else {
					for (Model tempmod : modlist) {
			%>
			<tr>
				<td><%=tempmod.getModname()%></td>
				<td><%=tempmod.getModcontent()%></td>
				<td><%=tempmod.getModcreatedate()%></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</div>
</body>
</html>