<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.huatai.entity.UserInfo"%>
<%@page import="com.huatai.biz.UserBiz,com.huatai.biz.impl.UserBizImpl"%>
<%@page import="com.huatai.dao.UserDao"%>

<%
	//获得管理员账号
	String userName = (String) request.getSession().getAttribute("comuser");
	//获得原始密码
	String firstpwd = request.getParameter("mpass");

	//新密码
	String newpass = request.getParameter("newpass");

	//再次确认密码
	String renewpass = request.getParameter("renewpass");

	//根据账号把正确密码读出来,然后与输入的原始密码比较,
	UserBiz userbiz = new UserBizImpl();
	UserInfo user = userbiz.findpwd(userName);

	String truepwd = user.getPassword();
	//System.out.println(truepwd);
	if (truepwd.endsWith(firstpwd)) {
		if (newpass.equals(renewpass)) {
			//两次新密码一样即可以更新tb_user_info信息表
			UserInfo uppwd = new UserInfo(userName, newpass);
			boolean isSuccess = userbiz.updateAdminpwd(uppwd);
			if (isSuccess) {
				request.setAttribute("updatepwdmsg", "修改成功");
			}
		} else {
			request.setAttribute("updatepwdmsg", "新密码输入不一致");
		}
	} else {
		request.setAttribute("updatepwdmsg", "原始密码输入错误");
	}
	int root = user.getRoot();//2代表企业用户；3代表求职者
	if (2 == root) {
		request.getRequestDispatcher("../Companylogin/UpdatePwd.jsp").forward(request, response);
	} else if (3 == root) {
		request.getRequestDispatcher("../Worklogin/UpdatePwd.jsp").forward(request, response);

	}
%>
