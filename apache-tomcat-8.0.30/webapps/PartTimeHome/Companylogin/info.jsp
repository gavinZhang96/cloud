<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.biz.JobBiz"%>
<%@page import="com.huatai.biz.impl.JobBizImpl"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		String jobid = request.getParameter("jobid");
		JobBiz jobbiz = new JobBizImpl();
		Job Infojob = jobbiz.findInfoByNid(jobid);
	%>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>查看详情</strong>
		</div>
		<div class="body-content">
			<form method="get" action="" class="form-x">

				<div class="form-group">
					<div class="label">
						<label>标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=Infojob.getJtitle()%>" name="jtitle"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>岗位：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=Infojob.getJwork()%>" name="jwork" disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>发布时间：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=Infojob.getJcreatedate()%>" name="jcreatedate"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>工作年限：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=Infojob.getJtime()%>" name="jtime" disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>工作类型：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=Infojob.getJkind()%>" name="jkind" disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>学历要求：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=Infojob.getJlevel()%>" name="jlevel"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>薪资待遇：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=Infojob.getJmoney()%>" name="jmoney"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>



				<div class="form-group">
					<div class="label">
						<label>地址：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=Infojob.getJaddress()%>" name="jaddress"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>电话：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="jphone"
							value="<%=Infojob.getJphone()%>" disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="clear"></div>

				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<input name="action" type="hidden" value="addnews" />
						<div class="button bg-main icon-check-square-o">
							<%
								String Url = "LookFindworkor.jsp?jobid=" + jobid;
							%>
							<a href="<%=Url%>">查看申请者</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>