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

</head>
<body>
	<center>
		<table border="1" cellspacing="0" cellpadding="10" align="center"
			width="100%">
			<tr align="center">
				<th width="25%">模板名称</th>
				<th width="30%">模板介绍</th>
				<th width="25%">上传时间</th>
				<th width="20%">操作</th>
			</tr>

			<%
				ModelDao newsDao = new ModelDaoImpl();
				List<Model> modlist = newsDao.getAllmodels();
				if (modlist == null) {
					return;
				} else {
					for (Model tempmod : modlist) {
			%>
			<tr align="center">
				<td><%=tempmod.getModname()%></td>
				<td><%=tempmod.getModcontent()%></td>
				<td><%=tempmod.getModcreatedate()%></td>
				<td><a
					href="${pageContext.request.contextPath }/servlet/DownLoadServlet?modid=<%= tempmod.getModid() %>"
					target="_blank">下载</a></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</center>
</body>
</html>