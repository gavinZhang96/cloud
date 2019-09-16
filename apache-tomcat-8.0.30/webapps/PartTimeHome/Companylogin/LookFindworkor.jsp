<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import="com.huatai.biz.impl.ResumeBizImpl"%>
<%@page import="com.huatai.biz.ResumeBiz"%>
<%@page import="com.huatai.biz.impl.ApplyJobBizImpl"%>
<%@page import="com.huatai.biz.ApplyJobBiz"%>
<%@page import="com.huatai.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/Hrlogin/pintuer.css">
<link rel="stylesheet" href="../css/Hrlogin/admin.css">
<script src="../js/jquery.js"></script>
<!-- 输入合法性的验证 -->
<script src="../js/pintuer.js"></script>

</head>
<body>
	<%
		//根据传过来的jobid,查询出申请该工作的所有人员信息及其他信息
		String jid = request.getParameter("jobid");
	%>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder"> 内容列表</strong>
		</div>
		<form id="login" method="get" action="do_LookFindworkor.jsp">
			<table class="table table-hover text-center">
				<tr>
					<th>标题</th>
					<th>申请者</th>
					<th>发布时间</th>
					<th>申请时间</th>
					<th>是否同意</th>
					<th>查看申请者简历</th>
				</tr>
				<%
					ApplyJobBiz apployjob = new ApplyJobBizImpl();
					int flg = 0;//只将没有同意的显示出来
					List<ApplyJob> ajlist = apployjob.getApployJobByjobid(jid, flg);
					//System.out.println("list.size=" + list.size());
					//session.setAttribute("jobList", list);

					if (ajlist.size() == 0) {
				%>
				<div style="margin-left: 200px; color: red">
					<center>暂无数据</center>
				</div>
				<%
					return;
					} else {
						for (ApplyJob tempajob : ajlist) {
				%>
				<tr>
					<input type="hidden" name="jobid" value="<%=jid%>" />

					<!-- 标题 -->
					<td><%=tempajob.getApplytitle()%></td>
					<!-- 申请者 -->
					<%
						String uid = tempajob.getUserid();
								//根据id查询用户名称;
								ResumeBiz resumebiz = new ResumeBizImpl();
								Resume tempname = resumebiz.isExit(uid);
								if (tempname != null) {
									String resname = tempname.getResname();
									//System.out.println(resname);
					%>

					<td><%=resname%></td>
					<!-- 发布时间 -->
					<td><%=tempajob.getAjcreatedate()%></td>
					<!-- 申请时间 -->
					<td><%=tempajob.getApplycreatedate()%></td>
					<!-- 是否同意 -->

					<td><div class="button-group radio">
							<label class="button active"> <span
								class="icon icon-check"></span> <input
								name="isshow<%=tempajob.getApplyid()%>" value="同意" type="radio"
								checked="checked">是
							</label> <label class="button active"><span
								class="icon icon-times"></span> <input
								name="isshow<%=tempajob.getApplyid()%>" value="不同意" type="radio">否
							</label>
						</div></td>

					<!-- 查看申请者简历 -->
					<%
						String Url = "workresume.jsp?userresumeid=" + tempajob.getUserid();
					%>
					<td><a href="<%=Url%>">查看</a></td>
					<%
						} else {
									response.getWriter().println("<script type='text/javascript'>alert('该用户简历已删除！');</script>");
								}
					%>


				</tr>
				<%
					}
					}
				%>
			</table>
			<div class="field"
				style="float: right; margin-right: 50px; margin-bottom: 10px">

				<button class="button bg-main icon-check-square-o" type="submit">
					提交</button>
			</div>
		</form>

		<div>
			<div class="pagelist" style="margin-top: 20px;">
				<a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
					href="">3</a><a href="">下一页</a><a href="">尾页</a>
			</div>
		</div>

	</div>
</body>
</html>