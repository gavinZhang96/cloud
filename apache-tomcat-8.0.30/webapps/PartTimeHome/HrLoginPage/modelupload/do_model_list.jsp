<%@page import="com.huatai.dao.ModelDao"%>
<%@page import="com.huatai.dao.impl.ModelDaoImpl,com.huatai.entity.*"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
	ModelDao modelDao = new ModelDaoImpl();
	List<Model> modList = modelDao.getAllmodels();

	request.setAttribute("modList", modList);

	request.getRequestDispatcher("index_modelMsg.jsp").forward(request, response);
%>