<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>兼职之家</title>
<meta name="keyword" content="MyProject">
<meta name="description" content="善知教育">
<meta name="author" content="SJ">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.min.1.11.3.js"></script>
<script src="js/SuperSlide.2.1.1.js"></script>
<script src="js/js.js"></script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<!--[if IE 6]>
<script src="js/png.js"></script>
<script>
<![endif]-->
</head>
<body>
	<header class="index_header">
	<div class="index_header_l">
		<img src="images/index_03.png" alt="">
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
			<img src="images/index_05.png" alt=""><span>000-12345678</span>
			<div class="clear"></div>
		</dt>
		<dd>兼职之家24小时全国服务热线，欢迎来电咨询</dd>
	</dl>
	<div class="clear"></div>
	</header>
	<nav class="index_nav">
	<ul class="index_nav_ul index_public">
		<li><a href="index.jsp">首页</a></li>
		<li><a href="findwork.jsp">招聘信息</a></li>
		<li><a href="findworkTemp.jsp">兼职信息</a></li>
		<li><a href="news.jsp">新闻公告</a></li>
		<li><a href="skill.jsp">求职技巧</a></li>
		<li><a href="notice.jsp">系统留言</a></li>
		<li><a href="HrLogin.jsp">网站维护</a></li>
	</ul>
	</nav>
	<!-- banner -->
	<div class="index_case_banner index_public">
		<img src="images/jq.png" alt="">
	</div>
	<!-- main -->
	<div class="case_main index_public" style="height: 400px">
		<section class="case_left"> <footer class="case_left_t">
		<span class="case_left_t1">求职技巧</span> <span class="case_left_t2">Recruit
			Skill</span> </footer>
		<ul class="case_left_ul1">
			<li><a href="skilook.jsp" class="case_left_li_on" target="right">求职技巧</a></li>
			<li><a href="download.jsp" class="case_left_li_on"
				target="right">常用下载</a></li>
		</ul>
		</section>

		<section class="case_right"> <header class="case_right_f"><!-- 下划线 -->
		<div class="case_right_f_l">详细内容</div>
		<div class="case_right_f_r">
			<a href="jvascript:;">首页</a>&gt <a href="">详细内容</a>
		</div>
		<div class="clear"></div>
		</header>

		<div class="case_right_box" style="height: 350px">
			<iframe style="border: 0px;" name="right" width="100%" height="100%"
				frameborder="1" scrolling="auto" src="skilook.jsp"> </iframe>
		</div>
		</section>
		<div class="clear"></div>
	</div>
	<!-- 页尾 -->
	<%@include file="bottompage.jsp"%>
</body>
</html>