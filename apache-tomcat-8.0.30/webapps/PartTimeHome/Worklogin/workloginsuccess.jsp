<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page
	import="com.huatai.entity.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.*,java.util.*,java.io.*,org.apache.commons.fileupload.disk.*"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 浏览器兼容性设置-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 视图兼容设置 -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<!-- 页面默认使用极速核 -->
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/Hrlogin/pintuer.css">
<link rel="stylesheet" href="../css/Hrlogin/admin.css">
<script src="../js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".leftnav h2").click(function() {
			$(this).next().slideToggle(200).next("ul").slideDown(200);
			$(this).siblings().next("ul").slideUp(200);
			//$(this).toggleClass("on");
		});
		$(".leftnav ul li a").click(function() {
			$("#a_leader_txt").text($(this).text());
			$(".leftnav ul li a").removeClass("on");
			$(this).addClass("on");
		});
	});
</script>

</head>
<body style="background-color: #f2f9fd;">
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>
				<img src="../images/y.jpg" class="radius-circle rotate-hover"
					height="50" alt="" />管理中心
			</h1>
		</div>
		<div class="head-l">
			<%
				String user = (String) request.getSession().getAttribute("workuser");
			%>
			<a class="button button-little bg-blue"> <span class="icon-login"></span>
				个人：<%=user%>
			</a> &nbsp;&nbsp; <a class="button button-little bg-green"
				href="workloginsuccess.jsp"> <span class="icon-home"></span>
				后台首页
			</a> &nbsp;&nbsp; <a class="button button-little bg-red"
				href="../index.jsp"> <span class="icon-power-off"></span> 退出登录
			</a>

		</div>
	</div>
	<%
		//查询出登录用户的id,以便后面查询对应简历等
		UserBiz userbiz = new UserBizImpl();
		UserInfo userid = userbiz.getUserid(user);
		//System.out.println(userid.getUserid());
		String Url = "UpdateInfo.jsp?userid=" + userid.getUserid();
		String LookUrl = "LookInfo.jsp?userid=" + userid.getUserid();
	%>
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>

		<h2>
			<span class="icon-pencil-square-o"></span>求职信息管理
		</h2>
		<ul style="display: block">
			<li><a href="LookJob.jsp" target="right"><span
					class="icon-caret-right"></span>查看招聘信息</a></li>
			<li><a href="LookRecord.jsp" target="right"><span
					class="icon-caret-right"></span>查看投递记录</a></li>

		</ul>

		<h2>
			<span class="icon-pencil-square-o"></span>简历信息管理
		</h2>
		<ul>
			<li><a href="<%=Url%>" target="right"><span
					class="icon-caret-right"></span>简历信息完善</a></li>
		</ul>

		<h2>
			<span class="icon-user"></span>个人信息管理
		</h2>
		<ul>
			<li><a href="<%=LookUrl%>" target="right"><span
					class="icon-caret-right"></span>预览简历</a></li>
			<li><a href="UpdatePwd.jsp" target="right"><span
					class="icon-caret-right"></span>修改密码</a></li>
		</ul>

	</div>


	<ul class="bread">
		<li><a href="../HrLoginPage/rightmessage.jsp" target="right"
			class="icon-home"> 首页</a></li>
		<li><a href="##" id="a_leader_txt">网站信息</a></li>
	</ul>
	<div class="admin">
		<iframe scrolling="auto" rameborder="0"
			src="../HrLoginPage/rightmessage.jsp" name="right" width="100%"
			height="100%"></iframe>
	</div>
	<div style="text-align: center;"></div>
</body>
</html>