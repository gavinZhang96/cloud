<%@page import="com.huatai.biz.impl.skillBizImpl"%>
<%@page import="com.huatai.util.CommonUtils"%>
<%@page import="com.huatai.biz.skillBiz"%>
<%@page import="com.huatai.entity.skill"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//添加新闻
	skillBiz skillbiz = new skillBizImpl();

	//获得新闻信息;
	String skkid = CommonUtils.getUUid();
	String skkind = request.getParameter("skkind");
	String skcontent = request.getParameter("skcontent");

	//System.out.println("nsummary"+nsummary);

	skill skills = new skill(skkid, skkind, skcontent);
	boolean isSuccess = skillbiz.insertSkill(skills);
	if (isSuccess) {
		List<skill> skil = skillbiz.getAllSkill();
		session.setAttribute("sklist", skil);
		response.sendRedirect("index_skillMsg.jsp");
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('记录已存在，新增技巧失败！');</script>");
	}
%>

