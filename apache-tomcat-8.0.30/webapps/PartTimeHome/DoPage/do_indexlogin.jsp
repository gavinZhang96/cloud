<%@page import="com.huatai.dao.BlackUserDao"%>
<%@page import="com.huatai.entity.*"%>
<%@page import="com.huatai.dao.impl.UserDaoImpl"%>
<%@page import="com.huatai.dao.impl.BlackUserDaoImpl"%>
<%@page import="com.huatai.dao.UserDao"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//验证企业用户和求职者的登录信息
	//1.首先接收输入的信息,
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	String useroot = request.getParameter("workor");

	int root = 2;//--1代表管理员；2代表企业用户；3代表求职者
	if ("企业用户".equals(useroot)) {
		root = 2;
	} else if ("求职用户".equals(useroot)) {
		root = 3;
	}
	UserDao userDao = new UserDaoImpl();
	UserInfo user = userDao.findUser(userName, password, root);

	//2.将接收的数据与数据库进行比较,
	if (user == null) {
		//3.不相同则跳回原登录页面index.jsp
		request.setAttribute("indexmsg", "账户信息不符合,请重新输入");
		request.getRequestDispatcher("../index.jsp").forward(request, response);

	} else {
		//4.若用户名和密码正确,则需要验证是否进入黑名单;若没有进入则登录;进入则不允许登录,
		BlackUserDao blackruse = new BlackUserDaoImpl();
		BlackUserInfo bu = blackruse.isExitAccount(user.getUserid());
		if (bu != null) {
			if (userName.equals(bu.getAccount())) {
				request.setAttribute("indexmsg", "权限受限，禁止登录。");
				request.getRequestDispatcher("../index.jsp").forward(request, response);
			} else {
				if (root == 2) {
					session.setAttribute("comuser", userName);
					response.sendRedirect("../Companylogin/comloginsuccess.jsp");
				} else if (root == 3) {
					session.setAttribute("workuser", userName);
					response.sendRedirect("../Worklogin/workloginsuccess.jsp");
				}
			}
		} else {
			if (root == 2) {
				session.setAttribute("comuser", userName);
				response.sendRedirect("../Companylogin/comloginsuccess.jsp");
			} else if (root == 3) {
				session.setAttribute("workuser", userName);
				response.sendRedirect("../Worklogin/workloginsuccess.jsp");
			}
		}

	}
%>
