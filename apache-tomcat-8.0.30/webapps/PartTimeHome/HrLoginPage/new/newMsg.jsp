<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.dao.NewsDao"%>
<%@page import="com.huatai.dao.impl.NewsDaoImpl"%>
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
		<!-- 查询所有的新闻 -->
		<table class="table table-hover text-center">
			<tr>
				<th width="10%">标题</th>
				<th width="15%">摘要</th>
				<th width="40%">图片</th>
				<th width="15%">发布时间</th>
				<th width="10%">作者</th>
				<th width="10%">显示详情</th>
			</tr>
			<%
				NewsDao newsDao = new NewsDaoImpl();
				List<News> list = newsDao.getAllnews();
				if (list == null) {
					return;
				} else {
					for (News tempnew : list) {
						String infoUrl = "info.jsp?nid=" + tempnew.getNid();
			%>
			<tr>
				<td><%=tempnew.getNtitle()%></td>
				<td><%=tempnew.getNsummary()%></td>
				<td><img width="150" height="90" alt="新闻图片"
					src="/upload/<%=tempnew.getNpicpath()%>" /></td>
				<td><%=tempnew.getNcreatedate()%></td>
				<td><%=tempnew.getNauthor()%></td>
				<td><a href="<%=infoUrl%>">进入</a></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</div>
</body>
</html>