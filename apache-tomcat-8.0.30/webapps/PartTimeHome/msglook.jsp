<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.biz.MessageBiz"%>
<%@page import="com.huatai.biz.impl.MessageBizImpl"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<center>
		<table border="1" cellspacing="0" cellpadding="10" align="center"
			width="100%">
			<tr align="center">
				<th width="25%">标题</th>
				<th width="30%">留言内容</th>
				<th width="25%">发布时间</th>
				<th width="20%">发布者</th>
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
	</center>
</body>
</html>