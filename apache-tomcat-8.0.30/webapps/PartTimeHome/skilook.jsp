<%@page import="com.huatai.biz.impl.skillBizImpl"%>
<%@page import="com.huatai.biz.skillBiz"%>
<%@page import="com.huatai.entity.skill"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div class="index_style3_l_box">
		<div class="index_style3_l_box1">
			<%
				skillBiz skillbiz = new skillBizImpl();
				List<skill> sklist = skillbiz.getAllSkill();
				if (sklist == null) {
					return;
				} else {
					for (skill tempsk : sklist) {
						String LookUrl = "skillInfo.jsp?skid=" + tempsk.getSkillid();
			%>
			<ul>
				<li><a href="<%=LookUrl%>"><%=tempsk.getSkkind()%></a></li>
			</ul>
			<%
				}
				}
			%>
		</div>
	</div>
</body>
</html>