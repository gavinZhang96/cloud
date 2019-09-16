<%@page import="com.huatai.biz.impl.ResumeBizImpl"%>
<%@page import="com.huatai.biz.ResumeBiz"%>
<%@page import="com.huatai.biz.impl.ResumeBizImpl"%>
<%@page import="com.huatai.biz.ResumeBiz"%>
<%@page
	import="com.huatai.entity.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.*,java.util.*,java.io.*,org.apache.commons.fileupload.disk.*"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//获得简历信息的用户id;
	String userid = request.getParameter("userid");
	//构建dao层对象
	ResumeBiz resumebiz = new ResumeBizImpl();
	boolean isSuccess = resumebiz.deleteResumeByUserId(userid);

	if (isSuccess) {
		request.getRequestDispatcher("UpdateInfo.jsp").forward(request, response);
	} else {
		response.getWriter().println("<script type='text/javascript'>alert('已投递,不可以删除简历失败！');</script>");
	}
%>