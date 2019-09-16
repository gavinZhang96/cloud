<%@page import="com.huatai.dao.NewsDao,com.huatai.entity.*"%>
<%@page import="com.huatai.dao.impl.NewsDaoImpl"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	//根据用户传入的nid，查询一下对应的新闻，保存到request域中
	String nid = request.getParameter("nid");

	//构建dao层对象
	NewsDao dao = new NewsDaoImpl();

	//根据id查询tb_news
	boolean isSuccess = dao.deleteNewsByNid(nid); 

	if (isSuccess) {
		request.getRequestDispatcher("do_news_list.jsp").forward(request, response);
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('删除新闻失败！');</script>");
	}
%>

