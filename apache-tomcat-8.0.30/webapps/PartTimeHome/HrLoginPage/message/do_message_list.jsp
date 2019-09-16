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
<script language="javascript">
	function codefans() {
		var box = document.getElementById("msg");
		box.style.display = "none";
	}
	setTimeout("codefans()", 3000);
</script>
</head>
<body>
	<form method="post" action="" id="listform">
		<div class="panel admin-panel">
			<!-- 操作提示信息 -->
			<%
				String tomsg = "";
				String msgtemp = (String) (request.getAttribute("delMsg"));
				//System.out.println(msgtemp);
				if (msgtemp != null) {
					tomsg = (String) (request.getAttribute("delMsg"));

				}
			%>
			<div class="panel-head">
				<strong class="icon-reorder"> 内容列表</strong><span id="msg"
					style="margin-left: 300px; color: #ff0000;"><%=tomsg%></span>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th width="10%">标题</th>
					<th width="50">留言内容</th>
					<th width="15%">发布时间</th>
					<th width="15%">发布者</th>
					<th width="10%">操作</th>
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
					<%
						String deleteUrl = "do_message_delete.jsp?msgid=" + tempmsg.getMsgid();
					%>
					<td><div class="button-group">
							<a class="button border-red" href="<%=deleteUrl%>"><span
								class="icon-trash-o"></span> 删除</a>
						</div></td>
				</tr>
				<%
					}
					}
				%>
				<tr>
					<td colspan="8"><div class="pagelist">
							<a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
								href="">3</a><a href="">下一页</a><a href="">尾页</a>
						</div></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>