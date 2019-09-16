<%@page import="com.huatai.biz.impl.skillBizImpl"%>
<%@page import="com.huatai.biz.skillBiz"%>
<%@page import="com.huatai.entity.skill"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>兼职之家</title>
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

	<!-- main -->
	<div class="case_main index_public"
		style="margin-top: 0px; width: 590px;">
		<section class="case_right_self">
		<div class="case_right_box">
			<dl class="case_show">
				<%
					String Skid = request.getParameter("skid");
					skillBiz skillbiz = new skillBizImpl();
					skill sklist = skillbiz.getAllSkills(Skid);
					if (sklist == null) {
						return;
					} else {
				%>
				<dt><%=sklist.getSkkind()%></dt>
				<dd class="case_show_dd1">
					<span>时间：<%=sklist.getSkcreatedate()%>
					</span>
				</dd>
				<dd class="case_show_dd2"><%=sklist.getSkcontent()%>
				</dd>
				<%
					}
				%>
			</dl>
		</div>
		</section>
		<div class="clear"></div>
	</div>
</body>
</html>