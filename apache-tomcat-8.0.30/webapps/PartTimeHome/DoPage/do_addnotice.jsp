<%@page import="com.huatai.biz.BlackUserBiz"%>
<%@page import="com.huatai.biz.impl.BlackUserBizImpl"%>
<%@page import="com.huatai.entity.*"%>
<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page import="com.huatai.biz.impl.MessageBizImpl"%>
<%@page import="com.huatai.biz.MessageBiz"%>
<%@page import="com.huatai.util.CommonUtils"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//验证用户登录信息
	//1.首先接收输入的信息,
	String msgaccount = request.getParameter("msgaccount");
	String msgpwd = request.getParameter("msgpwd");
	String msgtitle = request.getParameter("msgtitle");
	String msgcontent = request.getParameter("msgcontent");

	UserBiz userbiz = new UserBizImpl();
	UserInfo msguser = userbiz.findUser(msgaccount, msgpwd);

	//System.out.println("msguser" + msguser.getPassword());
	//2.将接收的数据与数据库进行比较,
	if (msguser == null) {
		//3.不相同则跳回原登录页面
		request.setAttribute("err", "账户信息不符合,请重新输入");
		request.getRequestDispatcher("../addnotice.jsp").forward(request, response);
	} else {
		//4.若用户名和密码正确,则需要验证是否进入黑名单;若没有进入则登录;进入则不允许登录,
		BlackUserBiz blackrusebiz = new BlackUserBizImpl();
		BlackUserInfo bu = blackrusebiz.isExitAccount(msguser.getUserid());
		if (bu != null) {
			if (msgaccount.equals(bu.getAccount())) {
				request.setAttribute("err", "权限受限，禁止登录。");
				request.getRequestDispatcher("../addnotice.jsp").forward(request, response);
			}
		} else {//可以登陆,并且将留言信息插入留言表中
			String msgid = CommonUtils.getUUid();
			String uid = msguser.getUserid();
			Message message = new Message(msgid, msgtitle, msgcontent, msgaccount, uid);
			MessageBiz massagebiz = new MessageBizImpl();
			boolean isSuccess = massagebiz.insertMessage(message);
			if (isSuccess) {
				request.setAttribute("err", "留言成功");
				request.getRequestDispatcher("../addnotice.jsp").forward(request, response);
			} else {
				request.setAttribute("err", "留言失败");
				request.getRequestDispatcher("../addnotice.jsp").forward(request, response);
			}
		}
	}
%>
