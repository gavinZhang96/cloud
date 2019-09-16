<%@page import="com.huatai.entity.UserInfo"%>
<%@page import="com.huatai.dao.impl.UserDaoImpl"%>
<%@page import="com.huatai.dao.UserDao"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
	//首先校验验证码
	//1.分别获取随机出来的验证码和输入的验证码
	String valiDate = (String) (request.getSession().getAttribute("vCode"));
	System.out.println("valiDate " + valiDate);
	String inputValidate = request.getParameter("code");
	System.out.println("inputValidate " + inputValidate);

	//2.将两者进行比较,若相同则进行密码用户的验证
	if (valiDate.equalsIgnoreCase(inputValidate)) {

		//3.验证码正确的话,开始查询用户输入的管理员账户与密码是否正确
		String userName = request.getParameter("uname");
		String password = request.getParameter("pwd");

		//System.out.println("userName = " + userName);
		//System.out.println("password = " + password);
		UserDao userDao = new UserDaoImpl();
		UserInfo user = userDao.findUser(userName, password);
		if (user == null) {
			//response.getWriter().println("<script type='text/javascript'>alert('登录失败！');</script>");
			session.setAttribute("Hrmsg", "用户名密码不对,请重新输入");
			response.sendRedirect("../HrLogin.jsp");
			
		} else {
			//System.out.println("登录成功 ");
			session.setAttribute("admin", userName);
			response.sendRedirect("../HrLoginPage/adminindex.jsp");
		}
	} else {
		session.setAttribute("Hrmsg", "验证码输入不正确,请重新输入");
		response.sendRedirect("../HrLogin.jsp");
	}
%>
