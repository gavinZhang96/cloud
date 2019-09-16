<%@page import="com.huatai.biz.impl.skillBizImpl"%>
<%@page import="com.huatai.biz.skillBiz"%>
<%@page import="com.huatai.entity.skill"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	//根据用户传入的nid，查询一下对应的新闻，保存到request域中
	String skillid = request.getParameter("skid");

	//构建dao层对象
	skillBiz skillbiz = new skillBizImpl();

	//根据id查询tb_news
	boolean isSuccess = skillbiz.deleteSkillByid(skillid);

	if (isSuccess) {
		request.getRequestDispatcher("do_skill_list.jsp").forward(request, response);
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('删除技巧失败！');</script>");
	}
%>

