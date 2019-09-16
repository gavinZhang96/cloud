<%@page import="com.huatai.dao.impl.TopicsDaoImpl"%>
<%@page import="com.huatai.util.CommonUtils"%>
<%@page import="com.huatai.dao.NewsDao"%>
<%@page import="com.huatai.dao.TopicsDao"%>
<%@page
	import="com.huatai.dao.impl.NewsDaoImpl,com.huatai.entity.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.*,java.util.*,java.io.*,org.apache.commons.fileupload.disk.*"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//添加新闻
	NewsDao newsDao = new NewsDaoImpl();

	//获得新闻信息;
	String nid = CommonUtils.getUUid();
	String ntitle = request.getParameter("ntitle");
	String nauthor = request.getParameter("nauthor");
	String npicpath = request.getParameter("file");
	String ncontent = request.getParameter("ncontent");
	String nsummary = request.getParameter("nsummary");

	//System.out.println("nsummary"+nsummary);
	//根据tid查询topic
	TopicsDao topicDao = new TopicsDaoImpl();
	String ntid = request.getParameter("ntid");
	//System.out.println("ntid"+ntid);
	Topic topic = topicDao.findTopicByTid(ntid);
	News news = new News(nid, ntitle, nauthor, npicpath, ncontent, nsummary, topic);
	boolean isSuccess = newsDao.insertNews(news);
	if (isSuccess) {
		List<News> list = newsDao.getAllnews();
		session.setAttribute("list", list);
		response.sendRedirect("index_newMsg.jsp");
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('新增新闻失败！');</script>");
	}
%>

