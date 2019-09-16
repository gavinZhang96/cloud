<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.dao.NewsDao"%>
<%@page import="com.huatai.dao.impl.NewsDaoImpl"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>
	<div class="case_main index_public"
		style="margin-top: 0px; margin-left: 0px; width: 95%">
		<%
			String nid = request.getParameter("nid");
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
					<div style="float: right;width=200px;height=320px;margin-right:20px;margin-left:40px">
						<img alt="新闻图片" src="/upload/<%=Infonew.getNpicpath()%>" />
					</div>
					<div style="margin-left:20px"><%=Infonew.getNcontent()%></div>
				</dd>
			</dl>
		</div>
		<div class="clear"></div>
	</div>
</body>
</html>