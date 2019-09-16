<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.huatai.entity.UserInfo"%>
<%@page import="com.huatai.dao.impl.UserDaoImpl,com.huatai.entity.*"%>
<%@page import="com.huatai.dao.UserDao"%>
<%
	//获得管理员账号
	String userName = (String) request.getSession().getAttribute("admin");
	//获得原始密码
	String firstpwd = request.getParameter("mpass");

	//新密码
	String newpass = request.getParameter("newpass");

	//再次确认密码
	String renewpass = request.getParameter("renewpass");

	//根据管理员账号把正确密码读出来,然后与输入的原始密码比较,
	UserDao userDao = new UserDaoImpl();
	UserInfo user = userDao.findpwd(userName);

	String truepwd = user.getPassword();
	//System.out.println(truepwd);
	if (truepwd.endsWith(firstpwd)) {
		if (newpass.equals(renewpass)) {
			//两次新密码一样即可以更新tb_user_info信息表
			UserInfo uppwd = new UserInfo(userName, newpass);
			boolean isSuccess = userDao.updateAdminpwd(uppwd);
			if (isSuccess) {
				request.setAttribute("updatepwdmsg", "修改成功");
			}
		} else {
			request.setAttribute("updatepwdmsg", "新密码输入不一致");
		}
	} else {
		request.setAttribute("updatepwdmsg", "原始密码输入错误");
	}
	request.getRequestDispatcher("updatepwd.jsp").forward(request, response);
%>
