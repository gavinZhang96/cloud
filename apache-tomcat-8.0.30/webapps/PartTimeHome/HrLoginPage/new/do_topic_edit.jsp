<%@page import="com.huatai.dao.TopicsDao"%>
<%@page
	import="com.huatai.dao.impl.TopicsDaoImpl,com.huatai.entity.*"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	TopicsDao topicsDao = new TopicsDaoImpl();

	String tname = request.getParameter("tname");
	String tid = request.getParameter("tid");
	
	Topic topic = new Topic(tid, tname);

	boolean isSuccess = topicsDao.updateTopic(topic);
	if (isSuccess) {
		List<Topic> list = topicsDao.getAllTopics();
		request.setAttribute("topicList", list);
		request.getRequestDispatcher("topic_list.jsp").forward(request, response);
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('编辑主题失败！');</script>");
	}
%>

