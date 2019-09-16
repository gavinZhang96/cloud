<%@page import="com.huatai.biz.impl.ResumeBizImpl"%>
<%@page import="com.huatai.biz.ResumeBiz"%>
<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page
	import="com.huatai.entity.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.*,java.util.*,java.io.*,org.apache.commons.fileupload.disk.*"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script src="../js/img.js"></script>
<script type="text/javascript">
	function callBack1(code, path, msg) {

		$("input[name=file]").val(path);

		$("#dressPic").attr("src", "/upload/" + path);

		$("#dressPic").show();

		$("#dressPic").on("load", function() {
			resizeImg(90, 150, "dressPic");
		});

	}
	function clickdel() {
		return confirm("删除请点击确认");
	}
</script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>编辑内容</strong>
		</div>
		<div class="body-content">
			<%
				//String delid = request.getParameter("userid");
				//System.out.println("uid = " + uid);
				String user = (String) request.getSession().getAttribute("workuser");
				UserBiz userbiz = new UserBizImpl();
				UserInfo userid = userbiz.getUserid(user);
				String delid = userid.getUserid();
			%>
			<form method="get" enctype="multipart/form-data"
				action="del_lookinfo.jsp" class="form-x">

				<%
					//查询登录用的简历,并显示
					ResumeBiz biz = new ResumeBizImpl();
					Resume resumelist = biz.getResume(delid);

					if (resumelist == null) {
				%>
				<div style="margin-left: 200px; color: #c0c0c0">
					<center>暂无数据</center>
				</div>
				<%
					} else {
						//for (Resume tempresume : resumelist) {
						//System.out.println("list = " + list + ",list.size()=" + list.size());
				%>
				<input type="hidden" value="<%=delid%>" name="userid">

				<div class="form-group">
					<div class="label">
						<label>简历标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=resumelist.getRestitle()%>" name="restitle"
							disabled="disabled" />
						<!-- disabled="true -->
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>姓名：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=resumelist.getResname()%>" name="resname"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>电话：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="resnumber"
							value="<%=resumelist.getResNumber()%>" disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>学 历：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="resnumber"
							value="<%=resumelist.getReslevel()%>" disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>照片：</label>
					</div>
					<div class="field">
						<img width="150" height="90" alt="图片"
							src="/upload/<%=resumelist.getResphote()%>" />
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>期望薪资：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="resnumber"
							value="<%=resumelist.getResmoney()%>" disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>求职意向：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=resumelist.getResinterest()%>" name="resinterest"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>自我评价：</label>
					</div>
					<div class="field">
						<textarea name="restimate" class="input"
							style="height: 200px; border: 1px solid #ddd;"
							disabled="disabled"><%=resumelist.getRestimate()%></textarea>
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
						<button class="button bg-main icon-check-square-o" type="submit">
							删除</button>
					</div>
				</div>
				<%
					}
				%>
			</form>
		</div>
	</div>

</body>
</html>
