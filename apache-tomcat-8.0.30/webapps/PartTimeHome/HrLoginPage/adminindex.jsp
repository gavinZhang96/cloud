<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		//导航栏信息的显示，点击左侧那个，就会显示在上方
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
					height="50" alt="" />后台管理中心
			</h1>
		</div>
		<div class="head-l">
			<a class="button button-little bg-blue"> <span class="icon-login"></span>
				管理员：<%=request.getSession().getAttribute("admin")%>
			</a> &nbsp;&nbsp; <a class="button button-little bg-green"
				href="adminindex.jsp"> <span class="icon-home"></span> 后台首页
			</a> &nbsp;&nbsp; <a class="button button-little bg-red"
				href="../HrLogin.jsp" <%session.setAttribute("Hrmsg", "");%>> <span
				class="icon-power-off"></span> 退出登录
			</a>

		</div>
	</div>
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>

		<h2>
			<span class="icon-user"></span><a target="right">&nbsp;&nbsp;基本设置</a>
		</h2>
		<ul style="display: block">

			<!-- 管理用户对应的表达便是黑名单表tb_black_info 1代表不能登录,0代表能登录 -->
			<li><a href="basicSet/usermanage.jsp" target="right"><span
					class="icon-caret-right"></span>管理用户</a></li>
			<!-- 显示黑名单信息 -->
			<li><a href="basicSet/blackuserinfo.jsp" target="right"><span
					class="icon-caret-right"></span>黑名单表</a></li>

			<li><a href="basicSet/updatepwd.jsp" target="right"><span
					class="icon-caret-right"></span>修改密码</a></li>
		</ul>

		<h2>
			<span class="icon-pencil-square-o"></span> <a
				href="skill/skillMsg.jsp" target="right">求职技巧</a>
		</h2>
		<ul>
			<li><a href="skill/skill_add.jsp" target="right"><span
					class="icon-caret-right"></span>添加技巧</a></li>
			<li><a href="skill/do_skill_list.jsp" target="right"><span
					class="icon-caret-right"></span>管理技巧</a></li>
		</ul>

		<h2>
			<span class="icon-pencil-square-p"></span><a
				href="message/messageMsg.jsp" target="right">&nbsp;系统留言</a>
		</h2>
		<ul>
			<!-- \f044 -->
			<li><a href="message/do_message_list.jsp" target="right"><span
					class="icon-caret-right"></span>留言管理</a></li>

		</ul>

		<h2>
			<span class="icon-pencil-square-n"></span><a href="new/newMsg.jsp"
				target="right">&nbsp;新闻动态</a>
		</h2>
		<ul>
			<li><a href="new/new_add.jsp" target="right"><span
					class="icon-caret-right"></span>添加新闻</a></li>
			<li><a href="new/do_news_list.jsp" target="right"><span
					class="icon-caret-right"></span>编辑新闻</a></li>
			<li><a href="new/topic_add.jsp" target="right"><span
					class="icon-caret-right"></span>添加主题</a></li>
			<li><a href="new/do_topic_list.jsp" target="right"><span
					class="icon-caret-right"></span>编辑主题</a></li>
		</ul>

		<h2>
			<span class="icon-pencil-square-f"></span><a
				href="modelupload/modelMsg.jsp" target="right">&nbsp;文件上传</a>
		</h2>
		<ul>
			<li><a href="modelupload/model_add.jsp" target="right"><span
					class="icon-caret-right"></span>添加文件</a></li>
			<li><a href="modelupload/do_model_list.jsp" target="right"><span
					class="icon-caret-right"></span>编辑文件</a></li>
		</ul>

		<h2>
			<span class="icon-pencil-square-m"></span>&nbsp;查看信息</a>
		</h2>
		<ul>
			<li><a href="lookinfo/lookuser.jsp" target="right"><span
					class="icon-caret-right"></span>个人信息</a></li>
			<li><a href="lookinfo/lookCompany.jsp" target="right"><span
					class="icon-caret-right"></span>公司信息</a></li>
		</ul>


	</div>


	<ul class="bread">
		<li><a href="rightmessage.jsp" target="right" class="icon-home">
				首页</a></li>
		<li><a href="##" id="a_leader_txt"></a></li>
	</ul>
	<div class="admin">
		<!-- 点击左侧菜单，便会显示在此处   rameborder="0" -->
		<iframe scrolling="auto" src="rightmessage.jsp" name="right"
			width="100%" height="100%"></iframe>
	</div>
	<div style="text-align: center;"></div>
</body>
</html>