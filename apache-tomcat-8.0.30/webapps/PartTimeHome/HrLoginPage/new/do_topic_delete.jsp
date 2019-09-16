<%@page import="com.huatai.dao.TopicsDao"%>
<%@page import="com.huatai.dao.impl.TopicsDaoImpl,com.huatai.entity.*"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
	TopicsDao topicsDao = new TopicsDaoImpl();

	String tid = request.getParameter("tid");

	boolean isSuccess = topicsDao.deleteTopicByTid(tid);

	List<Topic> list = topicsDao.getAllTopics();
	request.setAttribute("topicList", list);

	if (isSuccess) {
		request.setAttribute("topicerrMsg", "删除主题成功！");
	} else {
		request.setAttribute("topicerrMsg", "删除主题失败！已关联其他表");
	}
	request.getRequestDispatcher("topic_list.jsp").forward(request, response);
%>

