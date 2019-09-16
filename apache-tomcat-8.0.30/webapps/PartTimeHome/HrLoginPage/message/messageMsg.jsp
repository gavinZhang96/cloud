<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.biz.MessageBiz"%>
<%@page import="com.huatai.biz.impl.MessageBizImpl"%>
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
			<strong class="icon-reorder">留言内容</strong>
		</div>
		<table class="table table-hover text-center">
			<tr>
				<th width="10%">标题</th>
				<th width="65">留言内容</th>
				<th width="15%">发布时间</th>
				<th width="10%">发布者</th>
			</tr>
			<%
				MessageBiz messagebiz = new MessageBizImpl();
				List<Message> messagelist = messagebiz.getAllMessage();
				if (messagelist == null) {
			%>
			<div style="margin-left: 200px; color: #c0c0c0">
				<center>暂无数据</center>
			</div>
			<%
				return;
				} else {
					for (Message tempmsg : messagelist) {
			%>
			<tr align="center">
				<td><%=tempmsg.getMsgtitle()%></td>
				<td><%=tempmsg.getMsgcontent()%></td>
				<td><%=tempmsg.getMsgcreatedate()%></td>
				<td><%=tempmsg.getMsgaccount()%></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</div>
</body>
</html>