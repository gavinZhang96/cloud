<%@page import="com.huatai.dao.NewsDao"%>
<%@page import="com.huatai.dao.impl.NewsDaoImpl,com.huatai.entity.*"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
	NewsDao newsDao=new NewsDaoImpl();
	List<News> list=newsDao.getAllnews();	
	request.setAttribute("newsList",list);
	
	
	request.getRequestDispatcher("index_newMsg.jsp").forward(request, response);
%>