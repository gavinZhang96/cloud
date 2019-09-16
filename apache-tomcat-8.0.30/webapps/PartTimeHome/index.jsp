<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.dao.NewsDao"%>
<%@page import="com.huatai.dao.impl.NewsDaoImpl"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.huatai.biz.impl.JobBizImpl"%>
<%@page import="com.huatai.biz.JobBiz"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 6]><script src="js/png.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/html5.js"></script><![endif]-->
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>兼职之家</title>
<meta name="keyword" content="MyProject">
<meta name="description" content="教育">
<meta name="author" content="SJ">
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basepath);
	//System.out.println(request.getAttribute("path"));
%>
<link rel="stylesheet"
	href="<%=request.getAttribute("path")%>css/common.css">
<link rel="stylesheet"
	href="<%=request.getAttribute("path")%>css/style.css">
<link rel="stylesheet"
	href="<%=request.getAttribute("path")%>css/login.css">
<link rel="stylesheet"
	href="<%=request.getAttribute("path")%>css/animate-custom.css">
<script src="<%=request.getAttribute("path")%>js/jquery.min.1.11.3.js"></script>
<script src="<%=request.getAttribute("path")%>js/SuperSlide.2.1.1.js"></script>
<script src="<%=request.getAttribute("path")%>js/js.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$(".slideBox").slide({
			mainCell : ".bd ul",
			effect : "left",
			autoPlay : true
		});
		jQuery(".slideGroup1 .slideBox").slide({
			mainCell : "ul",
			vis : 4,
			prevCell : ".sPrev",
			nextCell : ".sNext",
			effect : "leftLoop"
		});
	});
	//-- 定时显示提示信息 
	function codefans() {
		var box = document.getElementById("msg");
		box.style.display = "none";
	}
	setTimeout("codefans()", 3000);

	function recodefans() {
		var box = document.getElementById("remsg");
		box.style.display = "none";
	}
	setTimeout("recodefans()", 3000);
</script>

</head>
<body>

	<header class="index_header">
	<div class="index_header_l">
		<img src="<%=request.getAttribute("path")%>images/index_03.png" alt="">
	</div>
	<ul class="index_header_l2">
		<li>重信誉</li>
		<li>·</li>
		<li>高质量</li>
		<li>·</li>
		<li>凭实力</li>
		<li>·</li>
		<li>强服务</li>
	</ul>
	<dl class="index_header_r">
		<dt>
			<img src="<%=request.getAttribute("path")%>images/index_05.png"
				alt=""><span>000-12345678</span>
			<div class="clear"></div>
		</dt>
		<dd>兼职之家24小时全国服务热线，欢迎来电咨询！</dd>
	</dl>
	<div class="clear"></div>
	</header>
	<nav class="index_nav">
	<ul class="index_nav_ul index_public">
		<li><a href="<%=request.getAttribute("path")%>index.jsp">首页</a></li>
		<li><a href="<%=request.getAttribute("path")%>findwork.jsp">招聘信息</a></li>
		<li><a href="<%=request.getAttribute("path")%>findworkTemp.jsp">兼职信息</a></li>
		<li><a href="<%=request.getAttribute("path")%>news.jsp">新闻公告</a></li>
		<li><a href="<%=request.getAttribute("path")%>skill.jsp">求职技巧</a></li>
		<li><a href="<%=request.getAttribute("path")%>notice.jsp">系统留言</a></li>
		<li><a href="<%=request.getAttribute("path")%>HrLogin.jsp">网站维护</a></li>
	</ul>
	</nav>
	<!-- banner -->
	<div class="index_banner">
		<div id="slideBox" class="slideBox">

			<div class="bd">
				<ul>
					<li><a target="_blank"><img
							src="<%=request.getAttribute("path")%>images/zg1.jpg" /></a></li>
					<li><a target="_blank"><img
							src="<%=request.getAttribute("path")%>images/index_09.png" /></a></li>
					<li><a target="_blank"><img
							src="<%=request.getAttribute("path")%>images/jz1.jpg" /></a></li>
					<li><a target="_blank"><img
							src="<%=request.getAttribute("path")%>images/jz3.jpg" /></a></li>
				</ul>
			</div>

		

		</div>
	</div>
	<div class="index_style3">
		<div class="index_public">
			<div class="index_style3_l">
				<ul>
					<li class="index_style3_l_on">新闻公告</li>
					<li>兼职信息</li>
					<li>招聘信息</li>
				</ul>
				<div class="index_style3_l_box">

					<div class="index_style3_l_box1">
						<img src="<%=request.getAttribute("path")%>images/xw.png"
							alt="">
						<%
							NewsDao newsDao = new NewsDaoImpl();
							List<News> list = newsDao.getAllnews();
							if (list == null) {
								return;
							} else {
								for (News tempnew : list) {
									String infoUrl = "new_massage.jsp?indexnid=" + tempnew.getNid();
						%>
						
						<%
							}
							}
						%>
					</div>

					<div class="index_style3_l_box1">
						<img src="<%=request.getAttribute("path")%>images/jz12.jpg"
							alt="">
						<%
							String kind2 = "兼职";
							JobBiz jobbiz2 = new JobBizImpl();
							List<Job> jlist2 = jobbiz2.getAllJob(kind2);
							//System.out.println("list.size=" + list.size());
							if (jlist2 == null) {
								return;
							} else {
								for (Job tempjob2 : jlist2) {
									String workinfo2 = "applywork.jsp?winfoid=" + tempjob2.getJobid();
						%>
				
						<%
							}
							}
						%>
					</div>

					<div class="index_style3_l_box1">
						<img src="<%=request.getAttribute("path")%>images/zp1.jpg"
							alt="">
						<%
							String kind1 = "全职";
							JobBiz jobbiz1 = new JobBizImpl();
							List<Job> jlist1 = jobbiz1.getAllJob(kind1);
							//System.out.println("list.size=" + list.size());
							if (jlist1 == null) {
								return;
							} else {
								for (Job tempjob1 : jlist1) {
									String workinfo1 = "applywork.jsp?winfoid=" + tempjob1.getJobid();
						%>

						<%
							}
							}
						%>
					</div>

				</div>
			</div>
			<div class="index_style3_r">

				<div class="container" id="container_demo">
					<a class="hiddenanchor" id="toregister"></a> <a
						class="hiddenanchor" id="tologin"></a>
					<div id="wrapper">
						<!-- 登录 -->
						<div id="loginCss" class="animate form">
							<!-- 显示服务器端登录反馈回来的出错信息 -->
							<%
								String logmsg = "";
								String msglogtemp = (String) (request.getAttribute("indexmsg"));
								if (msglogtemp != null) {
									logmsg = (String) (request.getAttribute("indexmsg"));
								}
							%>
							<div class="index_style3_r_top">
								<span>用户登录</span>
							</div>
							<br>
							<div>
								<form id="login" method="post"
									action="<%=request.getAttribute("path")%>DoPage/do_indexlogin.jsp">
									<table id="inputs">
										<tr>
											<td id="pic" class="userpic">用户名:</td>
											<td><input id="username" type="text" name="username"
												placeholder="请输入企业名称或个人用户名" required></td>
										</tr>

										<tr>
											<td id="pic" class="pwdpic">密 码:</td>
											<td><input id="password" type="password" name="password"
												placeholder="请输入密码" required></td>
										</tr>

										<tr>
											<td id="pic" class="workpic"><p style="margin-top: 10px">角色:</p></td>
											<td><input id="workor" type="radio" name="workor"
												style="width: 50px" value="企业用户" checked>企业用户 <input
												id="workor" type="radio" name="workor"
												style="width: 50px; margin-top: 10px" value="求职用户">求职用户
											</td>
										</tr>
									</table>
									<fieldset id="loginactions">
										<input type="submit" id="submit" value="登录"> <input
											type="reset" id="reset" value="重置"> <a
											href="#toregister"> 注册</a>
									</fieldset>
								</form>
							</div>
						</div>
						<span id="msg" style="margin-left: 120px; color: #ff0000"><%=logmsg%></span>
						<!-- 注册 -->
						<div id="registerCss" class="animate form">
							<!-- 显示服务器端注册反馈回来的出错信息 -->
							<%
								String regmsg = "";
								String regmsgtemp = (String) (request.getAttribute("indexregmsg"));

								if (regmsgtemp != null) {
									regmsg = (String) (request.getAttribute("indexregmsg"));
								}
							%>
							<div class="index_style3_r_top">
								<span>用户注册</span>
							</div>
							<br>
							<div>
								<form id="register" method="post"
									action="<%=request.getAttribute("path")%>DoPage/do_indexregister.jsp">
									<table id="inputs">
										<tr>
											<td id="pic" class="reuserpic">用户名:</td>
											<td><input id="username" type="text" name="reusername"
												placeholder="请输入企业名称或个人用户名" required></td>
										</tr>

										<tr>
											<td id="pic" class="repwdpic">密 &nbsp;&nbsp;码:</td>
											<td><input id="password" type="password"
												name="repassword" placeholder="请输入密码" required></td>
										</tr>

										<tr>
											<td id="pic" class="repwdpic">确认密码:</td>
											<td><input id="password" type="password"
												name="repassword1" placeholder="请再次输入密码" required></td>
										</tr>

										<tr>
											<td id="pic" class="reworkpic"><p
													style="margin-top: 10px">角色:</p></td>
											<td><input id="workor" type="radio" name="reworkor"
												style="width: 50px" value="企业用户" checked>企业用户 <input
												id="workor" type="radio" name="reworkor"
												style="width: 50px; margin-top: 10px" value="求职用户">求职用户</td>
										</tr>
									</table>
									<fieldset id="registeractions">
										<input type="submit" id="submit" value="注册"> <a
											href="#tologin" style="float: right; margin-right: 10px">去登录...</a>
									</fieldset>
								</form>
							</div>
						</div>
						<span id="remsg" style="margin-left: 50px; color: #ff0000"><%=regmsg%></span>
					</div>

				</div>

			</div>
			<div class="clear"></div>
		</div>
	</div>

	
	<!-- 页尾 -->
	<%@include file="bottompage.jsp"%>

</body>
</html>