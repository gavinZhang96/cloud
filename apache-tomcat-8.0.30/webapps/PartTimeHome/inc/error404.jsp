<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>404 - Not found</title>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basepath);
	//System.out.println(request.getAttribute("path"));
%>

<link rel="stylesheet"
	href="<%=request.getAttribute("path")%>css/main.css" type="text/css"
	media="screen, projection" />
<link rel="stylesheet" type="text/css" media="all"
	href="<%=request.getAttribute("path")%>css/tipsy.css" />
<!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="<%=request.getAttribute("path")%>css/ie8.css" />
<![endif]-->

<script type="text/javascript"
	src="<%=request.getAttribute("path")%>scripts/jquery-1.7.2.min.js"></script>
<!-- uiToTop implementation -->
<script type="text/javascript"
	src="<%=request.getAttribute("path")%>scripts/custom-scripts.js"></script>
<script type="text/javascript"
	src="<%=request.getAttribute("path")%>scripts/jquery.tipsy.js"></script>
<!-- Tipsy -->

<script type="text/javascript">
	$(document).ready(function() {

		universalPreloader();

	});

	$(window).load(function() {

		//remove Universal Preloader
		universalPreloaderRemove();

		rotate();
		dogRun();
		dogTalk();

		//Tipsy implementation
		$('.with-tooltip').tipsy({
			gravity : $.fn.tipsy.autoNS
		});

	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>

	<!-- Universal preloader -->
	<div id="universal-preloader">
		<div class="preloader">
			<img
				src="<%=request.getAttribute("path")%>images/universal-preloader.gif"
				alt="universal-preloader" class="universal-preloader-preloader" />
		</div>
	</div>
	<!-- Universal preloader -->

	<div id="wrapper">
		<!-- 404 graphic -->
		<div class="graphic"></div>
		<!-- 404 graphic -->
		<!-- Not found text -->
		<div class="not-found-text">
			<h1 class="not-found-text">页面走丢了, 抱歉!</h1>
		</div>
		<!-- Not found text -->

		<div class="dog-wrapper">
			<!-- dog running -->
			<div class="dog"></div>
			<!-- dog running -->

			<!-- dog bubble talking -->
			<div class="dog-bubble"></div>

			<!-- The dog bubble rotates these -->
			<div class="bubble-options">
				<p class="dog-bubble">页面走丢了...不要担心，正飞速往回奔跑中...</p>
				<p class="dog-bubble">
					<br /> <a href="<%=request.getAttribute("path")%>index.jsp">点击返回首页
					</a>
				</p>
				<p class="dog-bubble">
					<br /> 淡定！淡定！
				</p>
				<p class="dog-bubble">
					<br /> <a href="<%=request.getAttribute("path")%>index.jsp">点击返回首页
					</a>
				</p>
				<p class="dog-bubble">
					<br /> 不要急！马上回来。
				</p>
				<p class="dog-bubble">
					<br /> <a href="<%=request.getAttribute("path")%>index.jsp">点击返回首页
					</a>
				</p>
			</div>
			<!-- The dog bubble rotates these -->
			<!-- dog bubble talking -->
		</div>

		<!-- planet at the bottom -->
		<div class="planet"></div>
		<!-- planet at the bottom -->
	</div>
</body>
</html>