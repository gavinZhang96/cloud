<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.dao.NewsDao"%>
<%@page import="com.huatai.dao.impl.NewsDaoImpl"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>兼职之家</title>
<meta name="description" content="教育">
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
		<dd>7X24小时全国服务热线，欢迎来电咨询！</dd>
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
		<img src="images/case_03.png" alt="">
	</div>
	<!-- main -->
	<div class="case_main index_public"
		style="margin-top: 0px; width: 960px">
		<%
			String nid = request.getParameter("indexnid");
			NewsDao newsDao = new NewsDaoImpl();
			News Infonew = newsDao.findInfoByNid(nid);
		%>
		<div class="case_right_f_l">详细信息</div>

		<div class="clear"></div>

		<div class="case_right_box">
			<dl class="case_show">
				<dt><%=Infonew.getNtitle()%></dt>
				<dd class="case_show_dd1">
					<span>摘要：<%=Infonew.getNsummary()%></span><span>发布时间：<%=Infonew.getNcreatedate()%>
					</span> <span>作者：<%=Infonew.getNauthor()%></span>
				</dd>
				<dd class="case_show_dd2">
					<div
						style="float: right; width =200px; height =320px; margin-right: 20px; margin-left: 40px">
						<img alt="新闻图片" src="/upload/<%=Infonew.getNpicpath()%>" />
					</div>
					<div style="margin-left: 20px"><%=Infonew.getNcontent()%></div>
				</dd>
			</dl>
		</div>
		<div class="clear"></div>
	</div>
	<!-- 页尾 -->
	<%@include file="bottompage.jsp"%>
</body>
</html>