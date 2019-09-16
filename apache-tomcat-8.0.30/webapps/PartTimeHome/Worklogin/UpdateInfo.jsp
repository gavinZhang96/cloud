<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page import="com.huatai.entity.*"%>
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
			resizeImg(150, 100, "dressPic");
		});

	}
	function codefans() {
		var box = document.getElementById("msg");
		box.style.display = "none";
	}
	setTimeout("codefans()", 3000);
</script>
</head>
<body>
	<!-- 显示服务器端登录反馈回来的出错信息 -->
	<%
		String resmsg = "";
		String msglogtemp = (String) (request.getAttribute("resumemsg"));
		if (msglogtemp != null) {
			resmsg = (String) (request.getAttribute("resumemsg"));
		}
	%>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>编辑内容</strong> <span
				id="msg" style="margin-left: 120px; color: #ff0000"><%=resmsg%></span>
		</div>
		<%
			//String uid  =  request.getParameter("userid");
			String user = (String) request.getSession().getAttribute("workuser");
			UserBiz userbiz = new UserBizImpl();
			UserInfo userid = userbiz.getUserid(user);
			String uid = userid.getUserid();
		%>
		<div class="body-content">
			<form method="get" enctype="multipart/form-data"
				action="do_UpdateInfo.jsp" class="form-x">

				<input type="hidden" value="<%=uid%>" name="userid">

				<div class="form-group">
					<div class="label">
						<label>简历标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="restitle"
							data-validate="required:请输入标题" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>姓名：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="resname"
							data-validate="required:请输入姓名" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>电话：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="resnumber" value="" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>学 历：</label>
					</div>
					<div class="field">
						<select name="reslevel" style="width: 150px" class="input w50">
							<option value="1">初中</option>
							<option value="2">高中</option>
							<option value="3">本科</option>
							<option value="4">研究生</option>
							<option value="5">博士</option>
						</select>
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>照片：</label>
					</div>
					<div class="field">
						<iframe
							src="${pageContext.request.contextPath}/inc/upload.jsp?callBack=callBack1"
							style="border: 0px; height: 30px;" scrolling="no"></iframe>
						<input type="hidden" id="url1" name="file" class="input tips"
							style="width: 20%; float: left;" value="" /> <img id="dressPic"
							src="/upload/${resphote}" alt=""
							${empty resphote?"style='display: none;'":""} />
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>期望薪资：</label>
					</div>
					<div class="field">
						<select name="resmoney" style="width: 150px" class="input w50">
							<option value="1">2000以下</option>
							<option value="2">2000~4000</option>
							<option value="3">4000~6000</option>
							<option value="4">6000~8000</option>
							<option value="5">8000~10000</option>
							<option value="6">10K以上</option>
						</select>
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>求职意向：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="resinterest"
							data-validate="required:请输入求职意向" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>自我评价：</label>
					</div>
					<div class="field">
						<textarea name="restimate" class="input"
							style="height: 200px; border: 1px solid #ddd;"></textarea>
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
							提交</button>
						<button class="button bg-main icon-check-square-o" type="reset"
							style="margin-left: 30px;">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
