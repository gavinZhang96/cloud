<%@ page import="com.huatai.dao.UserDao"%>
<%@ page import="com.huatai.dao.BlackUserDao"%>
<%@ page import="com.huatai.dao.impl.BlackUserDaoImpl"%>
<%@ page import="com.huatai.util.CommonUtils"%>
<%@ page import="com.huatai.dao.impl.UserDaoImpl,com.huatai.entity.*"%>
<%@ page import="com.huatai.biz.UserBiz,com.huatai.biz.impl.UserBizImpl"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//用户注册,即往Tb_user_info表里面插入信息
	UserDao newsDao = new UserDaoImpl();

	//从前台页面获得企业名称或者个人所输入的信息
	//通过工具类自动获取全球唯一的id
	String userid = CommonUtils.getUUid();

	//获得企业名称或个人用户名
	String reusername = request.getParameter("reusername");

	//System.out.println("1reusername是" + reusername);

	//获得企业名称或个人用户名查询新注册用户是否已经入黑名单
	BlackUserDao blackruse = new BlackUserDaoImpl();
	BlackUserInfo bu = blackruse.isExit(reusername);
	if (bu != null) {
		//进入黑名单
		if (reusername.equals(bu.getAccount())) {
			request.setAttribute("indexregmsg", "权限受限，禁止注册！");
		}
	} else {
		//System.out.println("没有进入黑名单");
		//没有进入黑名单		
		//判断是否已经注册
		UserBiz userbiz = new UserBizImpl();
		UserInfo isexit = userbiz.getIsExit(reusername);
		if (isexit != null) {
			if (reusername.equals(isexit.getAccount())) {
				//System.out.println("dan已经注册");
				request.setAttribute("indexregmsg", "已有该用户！");
				//request.getRequestDispatcher("../index.jsp").forward(request, response);
			}
		} else {
			//System.out.println("没有 注册");
			//没有注册
			//密码
			String repassword = request.getParameter("repassword");
			//System.out.println("3reusername是" + repassword);
			//再次确认密码
			String repassword1 = request.getParameter("repassword1");
			if (repassword.equals(repassword1)) {

				//身份   --1代表管理员；2代表企业用户；3代表求职者
				String roottemp = request.getParameter("reworkor");
				//System.out.println("root是"+roottemp);
				int root = 2;//--1代表管理员；2代表企业用户；3代表求职者
				if ("企业用户".equals(roottemp)) {
					root = 2;
				} else if ("求职用户".equals(roottemp)) {
					root = 3;
				}
				//构建录入用户的实例
				UserInfo user = new UserInfo(userid, reusername, repassword, root);
				boolean isSuccess = newsDao.insertNews(user);
				if (isSuccess) {
					request.setAttribute("indexregmsg", "注册成功！");
				} else {
					//response.getWriter().println("<script type='text/javascript'>alert('注册失败！请重新输入');</script>");
					request.setAttribute("indexregmsg", "该用户已经存在！");
				}
			} else {
				//两次输入的密码不同
				request.setAttribute("indexregmsg", "两次输入的密码不同！");
			}

		}

	}
	//response.sendRedirect("../index.jsp");
	request.getRequestDispatcher("../index.jsp").forward(request, response);
%>
