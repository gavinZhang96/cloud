<%@page import="com.huatai.dao.impl.ModelDaoImpl"%>
<%@page import="com.huatai.util.CommonUtils"%>
<%@page import="com.huatai.dao.ModelDao"%>
<%@page
	import="com.huatai.entity.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.*,java.util.*,java.io.*,org.apache.commons.fileupload.disk.*"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//添加新闻
	ModelDao modeldao = new ModelDaoImpl();

	//获得新闻信息;
	String modid = CommonUtils.getUUid();
	String modname = request.getParameter("modname");
	String modcontent = request.getParameter("modcontent");
	String modfile = request.getParameter("file");
	//System.out.println("modfile==="+modfile);
	
	Model model = new Model(modid,modname,modcontent,modfile);
	boolean isSuccess = modeldao.insertmodel(model);
	if (isSuccess) {
		List<Model> modelist = modeldao.getAllmodels();
		session.setAttribute("modelist", modelist);
		response.sendRedirect("index_modelMsg.jsp");
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('新增新闻失败！');</script>");
	}
%>

