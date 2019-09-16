<%@page import="com.huatai.biz.MessageBiz"%>
<%@page import="com.huatai.biz.impl.MessageBizImpl,com.huatai.entity.*"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
	String msgid = request.getParameter("msgid");
	MessageBiz meaagebiz = new MessageBizImpl();

	boolean isSuccess = meaagebiz.deleteMessageByTid(msgid);

	if (isSuccess) {
		request.setAttribute("delMsg", "删除留言成功！");
	} else {
		request.setAttribute("delMsg", "删除留言失败！");
	}
	request.getRequestDispatcher("do_message_list.jsp").forward(request, response);
%>

