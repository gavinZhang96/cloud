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
	News news = dao.findNesByNid(nid);

	if (news != null) {
		//将查询到的新闻保存到request域中，转发到新闻编辑页面
		session.setAttribute("news", news);
		response.sendRedirect("news_edit.jsp");
		
		//request.setAttribute("news", news);
		//System.out.println("news:"+news); 
		//request.getRequestDispatcher("news_edit.jsp").forward(request, response);
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('根据id查询新闻失败！');</script>");
	}
%>

