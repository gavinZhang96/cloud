<%@page import="com.huatai.dao.ModelDao,com.huatai.entity.*"%>
<%@page import="com.huatai.dao.impl.ModelDaoImpl"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	//根据用户传入的nid，查询一下对应的新闻，保存到request域中
	String modid = request.getParameter("modelid");

	//构建dao层对象
	ModelDao moddao = new ModelDaoImpl();

	//根据id查询tb_news
	boolean isSuccess = moddao.deleteModelByid(modid); 

	if (isSuccess) {
		request.getRequestDispatcher("do_model_list.jsp").forward(request, response);
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('删除模板失败！');</script>");
	}
%>

