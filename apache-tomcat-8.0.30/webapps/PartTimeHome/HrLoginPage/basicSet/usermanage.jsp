<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.huatai.dao.UserDao"%>
<%@page import="com.huatai.dao.impl.UserDaoImpl,com.huatai.entity.*"%>
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
<!-- 定时显示提示信息 -->
<script language="javascript">
	function codefans() {
		var box = document.getElementById("msg");
		box.style.display = "none";
	}
	setTimeout("codefans()", 3000);
</script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder"> 内容列表</strong>
			<!-- 操作提示信息 -->
			<%
				String bmsg = "";
				String msgtemp = (String) (request.getAttribute("blackusermsg"));
				//System.out.println(msgtemp);
				if (msgtemp != null) {
					bmsg = (String) (request.getAttribute("blackusermsg"));

				}
			%>
			<span id="msg" style="margin-left: 400px; color: #ff0000;"><%=bmsg%></span>
		</div>
		<!-- do_usermanage.jsp是处理是否拉黑,并将拉黑的信息存储到黑名单表中tb_black_info; 1代表不能登录,0代表能登录 -->
		<form id="login" method="get" action="do_usermanage.jsp">
			<table class="table table-hover text-center">
				<tr>
					<th>USERID</th>
					<th>企业名称或个人用户名</th>
					<th>权限</th>
					<th width="250px">是否拉黑</th>
				</tr>
				<%
					UserDao userDao = new UserDaoImpl();
					List<UserInfo> list = userDao.getAlluser();
					//System.out.println("list.size=" + list.size());
					session.setAttribute("userList", list);

					if (list == null) {
						return;
					} else {
						for (UserInfo tempuser : list) {
				%>
				<tr>
					<td><%=tempuser.getUserid()%></td>
					<td><%=tempuser.getAccount()%></td>
					<%
						String root = "管理员";
								int temproot = tempuser.getRoot();
								if (2 == temproot) {
									root = "企业用户";
								} else if (3 == temproot) {
									root = "求职者";
								}
					%>
					<td><%=root%></td>
					<td>

						<div class="button-group radio">
							<label class="button active"> <span
								class="icon icon-check"></span> <input
								name="isshow<%=tempuser.getUserid()%>" value="拉黑" type="radio"
								checked="checked">是
							</label> <label class="button active"><span
								class="icon icon-times"></span> <input
								name="isshow<%=tempuser.getUserid()%>" value="不拉黑" type="radio"
								checked="checked">否 </label>
						</div>
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

			<div class="field"
				style="float: right; margin-top: 10px; margin-right: 50px; margin-bottom: 20px">

				<button class="button bg-main icon-check-square-o" type="submit">
					提交</button>
			</div>
		</form>
	</div>
</body>
</html>