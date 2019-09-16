<%@page import="com.huatai.dao.TopicsDao"%>
<%@page
	import="com.huatai.dao.impl.TopicsDaoImpl,com.huatai.entity.*"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
	TopicsDao topicsDao = new TopicsDaoImpl();
	List<Topic> list = topicsDao.getAllTopics();
	request.setAttribute("topicList", list);
	request.getRequestDispatcher("topic_list.jsp").forward(request, response);
%>

