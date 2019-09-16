<%@page import="com.huatai.biz.impl.skillBizImpl"%>
<%@page import="com.huatai.biz.skillBiz"%>
<%@page import="com.huatai.entity.skill"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	skillBiz skillbiz = new skillBizImpl();
	List<skill> list = skillbiz.getAllSkill();
	request.setAttribute("sklist", list);

	request.getRequestDispatcher("index_skillMsg.jsp").forward(request, response);
%>