<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.biz.CompanyBiz"%>
<%@page import="com.huatai.biz.impl.CompanyBizImpl"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../../css/Hrlogin/pintuer.css">
<link rel="stylesheet" href="../../css/Hrlogin/admin.css">
<script src="../../js/jquery.js"></script>
<!-- 输入合法性的验证 -->
<script src="../../js/pintuer.js"></script>
<script type="text/javascript">
		//搜索
		function changesearch() {
		}}
	</script>
</head>
<body>
	<form method="post" action="" id="listform">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 详细信息</strong>
			</div>
			<div class="padding border-bottom" style="float: right;	">
				<li><input type="text" placeholder="请输入搜索的公司名称" name="keywords"
					class="input"
					style="width: 250px; line-height: 17px; display: inline-block" />

					<a href="javascript:void(0)" class="button border-main icon-search"
					onclick="changesearch()"> 搜索</a></li>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th>公司名称</th>
					<th>联系人</th>
					<th>电话</th>
					<th>地址</th>
					<th>行业类别</th>
					<th>招聘意向</th>
					<th>对应账号</th>
				</tr>
				<%
					CompanyBiz combiz = new CompanyBizImpl();
					List<Company> comlist = combiz.getAllCompany();
					if (comlist == null) {
						return;
					} else {
						for (Company tempcom : comlist) {
							String userid = tempcom.getUsercomid();
							UserBiz userbiz = new UserBizImpl();
							UserInfo tempaccount = userbiz.getAccountByUid(userid);
				%>
				<tr>
					<td><%=tempcom.getComname()%></td>
					<td><%=tempcom.getComhrman()%></td>
					<td><%=tempcom.getComNumber()%></td>
					<td><%=tempcom.getComaddress()%></td>
					<td><%=tempcom.getComkind()%></td>
					<td><%=tempcom.getCominterset()%></td>
					<td><font color="#00CC99"><%=tempaccount.getAccount()%></font></td>
				</tr>

				<%
					}
					}
				%>

			</table>
		</div>
	</form>
</body>
</html>