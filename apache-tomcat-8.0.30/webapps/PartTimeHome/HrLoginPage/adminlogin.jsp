<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<link rel="stylesheet" type="text/css" href="./css/Hrlogin/style.css" />
<link rel="stylesheet" type="text/css" href="./css/Hrlogin/login.css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/jquery.select.js"></script>
<title></title>
<script type="text/javascript">
	$(document).ready(function() {
		var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
		$(window).resize(function(e) {
			var height = $(window).height() > 445 ? $(window).height() : 445;
			$("#container").height(height);
			var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
			$('#bd').css('padding-top', bdheight);
		});
		$('select').select();
	});
	//验证码，点击图片就会发生变化
	function changeImage(img) {
		img.src = "${pageContext.servletContext.contextPath}/VerifyCodeServlet?d="
				+ new Date();//若两次url一样，图片不会发生变更,所以加new date();
	}
</script>
</head>
<body>
	<div id="container">
		<div id="bd">
			<div id="main">
				<div class="login-box">
					<div id="logo"></div>
					<h1></h1>
					<form action="DoPage/do_Hrlogin.jsp" method="get">
						<div class="input username" id="username">
							<label for="userName">用户名</label> <span></span><input type="text"
								id="username" name="uname" />

						</div>
						<div class="input psw" id="psw">
							<label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label> <span></span>
							<input type="password" id="password" name="pwd" />
						</div>

						<div class="input validate" id="validate">
							<label for="valiDate">验证码</label> <input type="text"
								id="valiDate" name="code" />
							<div class="value">
								<img id="pic"
									src="${pageContext.servletContext.contextPath}/VerifyCodeServlet"
									alt="验证码" onclick="changeImage(this)" />
							</div>
						</div>

						<div id="btn" class="loginButton">
							<input type="submit" class="button" value="登录" />
						</div>

					</form>
				</div>
				<!-- 显示服务器端反馈回来的出错信息 -->
				<%
					String Hrmsg = "";
					String msgtemp = (String) (request.getSession().getAttribute("Hrmsg"));
					//System.out.println(msgtemp);
					if (msgtemp != null) {
						Hrmsg = (String) (request.getSession().getAttribute("Hrmsg"));
					}
				%>
				<div style="margin-top: 330px; margin-left: 150px; color: #ff0000"><%=Hrmsg%></div>
			</div>
		</div>
	</div>

</body>
</html>