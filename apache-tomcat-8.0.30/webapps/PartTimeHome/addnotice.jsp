<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basepath);
	//System.out.println(request.getAttribute("path"));
%>
<script type="text/javascript">
	//-- 定时显示提示信息 
	function codefans() {
		var box = document.getElementById("msg");
		box.style.display = "none";
	}
	setTimeout("codefans()", 3000);
</script>
</head>
<body>
	<form method="post"
		action="<%=request.getAttribute("path")%>DoPage/do_addnotice.jsp">

		账户：<input type="text" name="msgaccount" placeholder="请输入账号" /> 密码： <input
			type="password" name="msgpwd" placeholder="请输入密码" /> 标题：<input
			type="text" name="msgtitle" placeholder="请输入标题" /> <br> <br>
		留言内容:<br>
		<textarea name="msgcontent" class="input"
			style="height: 200px; width: 610px; border: 1px solid #ddd;"></textarea>
		<br />

		<button type="submit"
			style="float: right; margin-right: 40px; margin-top: 10px;">提交</button>
	</form>
	<!-- 显示服务器端登录反馈回来的出错信息 -->
	<%
		String msg = "";
		String msgtemp = (String) (request.getAttribute("err"));
		if (msgtemp != null) {
			msg = (String) (request.getAttribute("err"));
		}
	%><br>
	<br>
	<span id="msg" style="margin-left: 150px; color: #ff0000"><%=msg%></span>
</body>
</html>