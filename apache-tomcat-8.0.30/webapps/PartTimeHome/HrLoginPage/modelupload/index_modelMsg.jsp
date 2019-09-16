<%@ page language="java"
	import="java.util.*,java.sql.*,com.huatai.entity.*"
	pageEncoding="utf-8"%>
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
<script language="javascript">
	function clickdel() {
		return confirm("删除请点击确认");
	}
</script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder"> 文件列表</strong>
		</div>

		<table class="table table-hover text-center">
			<tr>
				<th width="20%">模板名称</th>
				<th width="25%">上传时间</th>
				<th width="40%">模板介绍</th>
				<th width="15%">操作</th>
			</tr>
			<%
				List<Model> modelist = (List<Model>) (request.getAttribute("modList"));

				if (modelist == null) {
					response.sendRedirect("do_model_list.jsp");
					return;
				} else {
					//System.out.println("list = " + list + ",list.size()=" + list.size());
					for (Model tempmod : modelist) {
						//修改时，传递一个主键，通过主键查询表获得唯一的一条记录,封装成对象设置到页面文本数据框中，让用户基于旧的数据来更新
						String deleteUrl = "to_model_delete.jsp?modelid=" + tempmod.getModid();
			%>
			<tr>
				<td><%=tempmod.getModname()%></td>
				<td><%=tempmod.getModcreatedate()%></td>
				<td><%=tempmod.getModcontent()%></td>
				<td><div class="button-group">
						<a class="button border-red" href='<%=deleteUrl%>'
							onclick='return clickdel()'><span class="icon-trash-o"></span>
							删除</a>

					</div></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</div>
</body>
</html>