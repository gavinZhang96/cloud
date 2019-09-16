<%@page import="com.huatai.biz.impl.skillBizImpl"%>
<%@page import="com.huatai.biz.skillBiz"%>
<%@page import="com.huatai.entity.skill"%>
<%@ page language="java" import="java.util.Date,java.util.*"
	pageEncoding="utf-8"%>
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
<script language="javascript">
	function clickdel() {
		return confirm("删除请点击确认");
	}
</script>
</head>
<body>
	<form method="post" action="" id="listform">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 内容列表</strong> <a href=""
					style="float: right; display: none;">添加字段</a>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left: 10px;">
					<li><a class="button border-main icon-plus-square-o"
						href="skill_add.jsp"> 添加内容</a></li>

					<li style="float: right;"><input type="text"
						placeholder="请输入搜索关键字" name="keywords" class="input"
						style="width: 250px; line-height: 17px; display: inline-block" />
						<a href="javascript:void(0)"
						class="button border-main icon-search"> 搜索</a></li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th width="30%">种类</th>
					<th width="50%">内容</th>
					<th width="20%">更新时间</th>
				</tr>
				<%
					skillBiz skillbiz = new skillBizImpl();
					List<skill> sklist = skillbiz.getAllSkill();
					if (sklist == null) {
						return;
					} else {
						for (skill tempsk: sklist) {
				%>
				<tr>
					<td><%=tempsk.getSkkind()%></td>
					<td><%=tempsk.getSkcontent()%></td>
					<td><%=tempsk.getSkcreatedate()%></td>
				</tr>
				<%
					}
					}
				%>
				<tr>
					<td colspan="8"><div class="pagelist">
							<a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
								href="">3</a><a href="">下一页</a><a href="">尾页</a>
						</div></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>