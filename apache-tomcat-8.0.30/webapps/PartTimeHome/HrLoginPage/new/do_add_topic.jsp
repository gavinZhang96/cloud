<%@page import="com.huatai.util.CommonUtils"%>
<%@page import="com.huatai.dao.impl.TopicsDaoImpl"%>
<%@page import="com.huatai.dao.TopicsDao"%>
<%@page import="com.huatai.entity.Topic"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
	TopicsDao topicsDao = new TopicsDaoImpl();

	String tname = request.getParameter("tname");
	Topic topic = topicsDao.findTopicByName(tname);
	if (topic == null) {
		Topic newTopic = new Topic();
		newTopic.setTname(tname);
		newTopic.setTid(CommonUtils.getUUid());
		topicsDao.addTopic(newTopic);
		request.getRequestDispatcher("do_topic_list.jsp").forward(request, response);
	} else {//服务器端的验证
		request.setAttribute("addtopicmsg", "当前主题已存在，请输入不同的主题！");
		request.getRequestDispatcher("topic_add.jsp").forward(request, response);
	}
%>
