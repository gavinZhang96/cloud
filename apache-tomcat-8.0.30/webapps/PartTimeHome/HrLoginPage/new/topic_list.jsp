<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,com.huatai.entity.*"%>
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
<body>
	<div class="panel admin-panel">
		<!-- 操作提示信息 -->
		<%
			String tomsg = "";
			String msgtemp = (String) (request.getAttribute("topicerrMsg"));
			//System.out.println(msgtemp);
			if (msgtemp != null) {
				tomsg = (String) (request.getAttribute("topicerrMsg"));

			}
		%>
		<div class="panel-head">
			<strong class="icon-reorder"> 内容列表</strong>
			<span id="msg"
			style="margin-left: 300px; color: #ff0000;"><%=tomsg%></span>
		</div>

		<table class="table table-hover text-center">
			<tr>
				<th width="50%">类别</th>

				<th width="50%">操作</th>
			</tr>

			<%
				ArrayList<Topic> list = (ArrayList<Topic>) request.getAttribute("topicList");
				for (Topic tempTopic : list) {
					String editUrl = "topic_edit.jsp?tid=" + tempTopic.getTid() + "&tname=" + tempTopic.getTname();
					String deleteUrl = "do_topic_delete.jsp?tid=" + tempTopic.getTid();
			%>
			<tr>
				<td><%=tempTopic.getTname()%></td>
				<td><div class="button-group">
						<a class="button border-main" href="<%=editUrl%>"><span
							class="icon-edit"></span> 修改</a> <a class="button border-red"
							href="<%=deleteUrl%>" onclick="return del(1,1)"><span
							class="icon-trash-o"></span> 删除</a>
					</div></td>
			</tr>
			<%
				}
			%>

		</table>
	</div>
	<script type="text/javascript">
		function del(id, mid) {
			if (confirm("您确定要删除吗?")) {

			}
		}
	</script>
</body>
</html>