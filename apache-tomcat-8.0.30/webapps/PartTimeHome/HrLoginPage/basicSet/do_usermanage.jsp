<%@ page import="com.huatai.dao.BlackUserDao"%>
<%@ page import="com.huatai.util.CommonUtils"%>
<%@ page import="com.huatai.dao.UserDao"%>
<%@ page import="com.huatai.dao.impl.UserDaoImpl"%>
<%@ page
	import="com.huatai.dao.impl.BlackUserDaoImpl,com.huatai.entity.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//构造实例;黑名单信息处理,即往tb_black_info表里面插入信息,
	BlackUserDao blackuser = new BlackUserDaoImpl();

	//从数据库查询出id，目的就是与前台单选框的name属性值一样，从而可以获得role的值；
	UserDao userDao = new UserDaoImpl();
	List<UserInfo> list = userDao.getAlluser();
	for (UserInfo tempuser : list) {
		//System.out.println(request.getParameter("isshow"+tempuser.getUserid()));
		String temprole = request.getParameter("isshow" + tempuser.getUserid());
		//获得role;若role的值为1,则把该条数据插入黑名单表中,否则不能插入;   1代表(拉黑)不能登录,0代表能登录
		int role;
		if ("拉黑".equals(temprole)) {
			role = 1;
			//通过工具类自动获取全球唯一的id
			String blackid = CommonUtils.getUUid();
			//获得黑用户的userid
			String userid = tempuser.getUserid();
			String account = tempuser.getAccount();
			String pwd = tempuser.getPassword();
			int root = tempuser.getRoot();

			BlackUserInfo bu = new BlackUserInfo(blackid, userid, account, pwd, root, role);
			blackuser.insertblackUser(bu);

		}
	}
	request.setAttribute("blackusermsg", "操作成功!");
	request.getRequestDispatcher("usermanage.jsp").forward(request, response);
	//response.sendRedirect("usermanage.jsp");
%>



