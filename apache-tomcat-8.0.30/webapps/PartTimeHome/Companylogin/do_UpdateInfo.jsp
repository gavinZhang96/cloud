<%@page import="com.huatai.biz.impl.CompanyBizImpl"%>
<%@page import="com.huatai.util.CommonUtils"%>
<%@page import="com.huatai.biz.CompanyBiz"%>
<%@page
	import="com.huatai.entity.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.*,java.util.*,java.io.*,org.apache.commons.fileupload.disk.*"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//获得公司信息;
	String comuserid = request.getParameter("comid");
	//根据userid查询改简历是否已存在,来判断是否完善
	CompanyBiz combiz = new CompanyBizImpl();
	Company comp = combiz.isExit(comuserid);

	if (comp != null) {
		if (comuserid.equals(comp.getUsercomid())) {
			request.setAttribute("companymsg", "公司信息已经存在,无须完善");
			request.getRequestDispatcher("UpdateInfo.jsp").forward(request, response);
		}
	} else {
		//System.out.println("userid==" + userid);
		String compid = CommonUtils.getUUid();
		String comname = request.getParameter("comname");
		String comHrman = request.getParameter("comHrman");
		String comphone = request.getParameter("comphone");
		String comaddress = request.getParameter("comaddress");

		int kind = Integer.parseInt(request.getParameter("comkind"));
		String comkind = "";
		if (1 == kind) {
			comkind = "计算机/网络";
		} else if (2 == kind) {
			comkind = "广告/艺术";
		} else if (3 == kind) {
			comkind = "医疗/护理";
			//System.out.println("reslevel==" + level);
		} else if (4 == kind) {
			comkind = "旅游/酒店";
		} else if (5 == kind) {
			comkind = "仓储/物流";
		} else if (6 == kind) {
			comkind = "教育/培训";
		} else if (7 == kind) {
			comkind = "市场/媒介";
		} else if (8 == kind) {
			comkind = "娱乐/休闲";
		} else if (9 == kind) {
			comkind = "建筑";
		} else if (10 == kind) {
			comkind = "餐饮";
		}

		String cominterest = request.getParameter("cominterest");
		String comcontent = request.getParameter("comcontent");

		//System.out.println("resmoney=="+resmoney);
		Company company = new Company(compid, comname, comHrman, comphone, comaddress, comkind, cominterest,
				comcontent, comuserid);

		//添加公司
		CompanyBiz Ciz = new CompanyBizImpl();
		boolean isSuccess = Ciz.insertResume(company);
		if (isSuccess) {
			response.sendRedirect("LookInfo.jsp");
		} else {
			response.getWriter().println("<script type='text/javascript'>alert('公司信息完善失败！');</script>");
		}
	}
%>

