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
			<strong class="icon-reorder"> 内容列表</strong>
		</div>

		<table class="table table-hover text-center">
			<tr>
				<th width="15%">种类</th>
				<th width="50%">内容</th>
				<th width="20%">更新时间</th>
				<th width="15%">操作</th>
			</tr>
			<%
				List<skill> list = (List<skill>) request.getAttribute("sklist");

				if (list == null) {
					response.sendRedirect("do_skill_list.jsp");
					return;
				} else {
					//System.out.println("list = " + list + ",list.size()=" + list.size());
					for (skill tempskil : list) {
						//修改时，传递一个主键，通过主键查询表获得唯一的一条记录,封装成对象设置到页面文本数据框中，让用户基于旧的数据来更新
						String deleteUrl = "to_skill_delete.jsp?skid=" + tempskil.getSkillid();
						//System.out.println("editUrl = " + editUrl);
			%>
			<tr>
				<td><%=tempskil.getSkkind()%></td>
				<td><%=tempskil.getSkcontent()%></td>
				<td><%=tempskil.getSkcreatedate()%></td>
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