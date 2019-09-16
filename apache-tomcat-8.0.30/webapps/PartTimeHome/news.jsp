<%@page import="com.huatai.dao.TopicsDao"%>
<%@page import="com.huatai.dao.impl.TopicsDaoImpl,com.huatai.entity.*"%>
<%@page import="com.huatai.dao.NewsDao"%>
<%@page import="com.huatai.biz.NewsBiz"%>
<%@page import="com.huatai.biz.impl.NewsBizImpl"%>
<%@page import="com.huatai.dao.impl.NewsDaoImpl"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>兼职之家</title>
<meta name="keyword" content="MyProject">
<meta name="description" content="善知教育">
<meta name="author" content="SJ">
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basepath);
	//System.out.println(request.getAttribute("path"));
%>
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
		<dd>兼职之家24小时全国服务热线，欢迎来电咨询！</dd>
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
		<img src="images/jrtt.jpg" alt="">
	</div>
	<!-- main -->
	<div class="case_main index_public" style="height: 100%">
		<section class="case_left"> <footer class="case_left_t">
		<span class="case_left_t1">新闻动态</span> <span class="case_left_t2">NEWS
			INFORMATION</span> </footer> <%
 	TopicsDao topicsDao = new TopicsDaoImpl();
 	List<Topic> list = topicsDao.getAllTopics();
 	for (Topic tempTopic : list) {
 		//String Url = "new_massage.jsp?indexnid=" + tempTopic.getTid();
 %>

		<ul class="case_left_ul1">
			<li><a class="case_left_li_on"><%=tempTopic.getTname()%></a></li>
		</ul>

		<%
			}
		%> </section>
		<section class="case_right"> <header class="case_right_f">
		<div class="case_right_f_l">招聘新闻</div>
		<div class="case_right_f_r">
			<a href="jvascript:;">首页</a>&gt <a href="">新闻动态</a>
		</div>
		<div class="clear"></div>
		</header>
		<div class="case_right_box" style="height: 100%px">
			<%
				NewsBiz newbiz = new NewsBizImpl();
				//设置默认的当前页
				Page nowPage = new Page();
				String currentPageStr = request.getParameter("currentPage");
				if (currentPageStr == null) {
					nowPage.setCurrentPage(1);

				} else {
					int currentPage = Integer.parseInt(currentPageStr);
					nowPage.setCurrentPage(currentPage);
				}

				Page pageInfo = newbiz.getNowPageAllInfo(nowPage, null, "All");

				List<News> newlist = pageInfo.getNewses();
				if (newlist == null) {
					return;
				} else {
					for (News tempnew : newlist) {
						String newinfoUrl = "new_massage.jsp?indexnid=" + tempnew.getNid();
			%>
			<section class="news-list"> <a
				href="<%=request.getAttribute("path")%><%=newinfoUrl%>"><img
				src="images/mv.jpg" alt=""></a>
			<dl>
				<dt><%=tempnew.getNsummary()%></dt>
				<dd class="news-list_dd1">
					<img src="images/news_10 (2).png" alt="" class="news-list_d1_i1">
					<span><%=tempnew.getNcreatedate()%></span>
				</dd>
				<dd class="news-list_dd2">
					<%=tempnew.getNcontent()%>... <a
						href="<%=request.getAttribute("path")%><%=newinfoUrl%>"
						class="news-list_dd2_a">[查看详情]</a>
				</dd>
			</dl>
			<div class="clear"></div>
			</section>
			<%
				}
				}
			%>

			<div class="clear"></div>
		</div>
		<div class="page">

			<p align="right">
				当前页数：[<%=nowPage.getCurrentPage()%>/<%=nowPage.getTotalPages()%>] <a
					href="news.jsp?currentPage=1">首页</a>
				<%
					if (nowPage.getTotalPages() > 0) {
				%>

				<%
					if (nowPage.getCurrentPage() > 1) {
				%>
				<a href="news.jsp?currentPage=<%=nowPage.getCurrentPage() - 1%>">上一页</a>
				<%
					}
				%>

				<%
					for (Integer pageNum : nowPage.getPageNums()) {
				%>
				<a href="news.jsp?currentPage=<%=pageNum%>"><%=pageNum%></a>
				<%
					}
				%>

				<%
					if (nowPage.getCurrentPage() < nowPage.getTotalPages()) {
				%>
				<a href="news.jsp?currentPage=<%=nowPage.getCurrentPage() + 1%>">下一页</a>
				<%
					}
				%>

				<%
					}
				%>
				<a href="news.jsp?currentPage=<%=nowPage.getTotalPages()%>">尾页</a>
			</p>
		</div>
		</section>
		<div class="clear"></div>
	</div>
	<!-- 页尾 -->
	<%@include file="bottompage.jsp"%>
</body>
</html>