<%@ page language="java" pageEncoding="utf-8"
	import="java.util.*,java.sql.*,com.huatai.entity.*"%>
<%@page import="com.huatai.biz.JobBiz"%>
<%@page import="com.huatai.biz.impl.JobBizImpl"%>
<%@page import="com.huatai.biz.CompanyBiz"%>
<%@page import="com.huatai.biz.impl.CompanyBizImpl"%>
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
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basepath);
	//System.out.println(request.getAttribute("path"));
%>
<link rel="stylesheet"
	href="<%=request.getAttribute("path")%>css/Hrlogin/pintuer.css">
<link rel="stylesheet"
	href="<%=request.getAttribute("path")%>css/Hrlogin/admin.css">
<script src="<%=request.getAttribute("path")%>js/jquery.js"></script>
<!-- 输入合法性的验证 -->
<script src="<%=request.getAttribute("path")%>js/pintuer.js"></script>

</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>职位详情</strong>
		</div>
		<div class="body-content">
			<%
				String jobid = request.getParameter("winfoid");
				if (jobid == null) {
			%>
			<div style="margin-left: 200px; color: #c0c0c0">
				<center>请选择你所需合适的工作...</center>
			</div>
			<%
				} else {
					//System.out.println("222tempjob.getJobid()是" + jobid);
					JobBiz jobbiz = new JobBizImpl();
					Job Infojob = jobbiz.findInfoByNid(jobid);
			%>
			<div style="margin-left: 40px">
				<form method="get"
					action="<%=request.getAttribute("path")%>DoPage/do_applywork.jsp"
					class="form-x">
					<input type="hidden" value="<%=jobid%>" name="jobid">
					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>标题：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50"
								value="<%=Infojob.getJtitle()%>" name="jtitle"
								readonly="readonly" />

							<div class="tips"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>岗位：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50"
								value="<%=Infojob.getJwork()%>" name="jwork" readonly="readonly" />
							<div class="tips"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>发布时间：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50"
								value="<%=Infojob.getJcreatedate()%>" name="jcreatedate"
								readonly="readonly" />
							<div class="tips"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>工作年限：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50"
								value="<%=Infojob.getJtime()%>" name="jtime" readonly="readonly" />
							<div class="tips"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>工作类型：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50"
								value="<%=Infojob.getJkind()%>" name="jkind" readonly="readonly" />
							<div class="tips"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>学历要求：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50"
								value="<%=Infojob.getJlevel()%>" name="jlevel"
								readonly="readonly" />
							<div class="tips"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>薪资待遇：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50"
								value="<%=Infojob.getJmoney()%>" name="jmoney"
								readonly="readonly" />
							<div class="tips"></div>
						</div>
					</div>



					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>地址：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50"
								value="<%=Infojob.getJaddress()%>" name="jaddress"
								readonly="readonly" />
							<div class="tips"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>电话：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" name="jphone"
								value="<%=Infojob.getJphone()%>" readonly="readonly" />
							<div class="tips"></div>
						</div>
					</div>
					<!-- 根据获得公司id获得公司名称 -->
					<%
						String comid = Infojob.getComid();
							CompanyBiz companybiz = new CompanyBizImpl();
							Company comname = companybiz.getComnameByComid(comid);
							String cname = comname.getComname();
					%>
					<div class="form-group">
						<div class="label" style="width: 100px">
							<label>所属公司：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" name="jcomname"
								value="<%=cname%>" readonly="readonly" />
							<div class="tips"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label></label>
						</div>
						<div class="field">
							<input name="action" type="hidden" value="addnews" />
							<button class="button bg-main icon-check-square-o" type="submit">
								申请该职位</button>
						</div>
					</div>
				</form>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>