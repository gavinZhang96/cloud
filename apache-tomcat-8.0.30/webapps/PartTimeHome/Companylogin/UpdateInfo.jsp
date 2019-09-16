<%@page import="com.huatai.biz.impl.UserBizImpl"%>
<%@page import="com.huatai.biz.UserBiz"%>
<%@page
	import="com.huatai.entity.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.*,java.util.*,java.io.*,org.apache.commons.fileupload.disk.*"%>
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
			resizeImg(150, 90, "dressPic");
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
		String cmsg = "";
		String msglogtemp = (String) (request.getAttribute("companymsg"));
		if (msglogtemp != null) {
			cmsg = (String) (request.getAttribute("companymsg"));
		}
	%>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>编辑内容</strong> <span
				id="msg" style="margin-left: 120px; color: #ff0000"><%=cmsg%></span>
		</div>
		<%
			String comuser = (String) request.getSession().getAttribute("comuser");
			//查询出登录用户的id,以便后面查询对应简历等
			UserBiz userbiz = new UserBizImpl();
			UserInfo userid = userbiz.getUserid(comuser);

			String comid = userid.getUserid();
			//String comid = (String) request.getAttribute("compid");
		%>

		<div class="body-content">
			<form method="get" enctype="multipart/form-data"
				action="do_UpdateInfo.jsp" class="form-x">

				<input type="hidden" value="<%=comid%>" name="comid">

				<div class="form-group">
					<div class="label">
						<label>企业名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="comname"
							data-validate="required:请输入企业名称" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>联系人：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="comHrman"
							data-validate="required:请输入联系人" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>电话：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="comphone" value=""
							data-validate="required:请输入联系电话" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>地址：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="comaddress"
							data-validate="required:请输入地址" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>行业：</label>
					</div>
					<div class="field">
						<select name="comkind" style="width: 150px" class="input w50">
							<option value="1">计算机/网络</option>
							<option value="2">广告/艺术</option>
							<option value="3">医疗/护理</option>
							<option value="4">旅游/酒店</option>
							<option value="5">仓储/物流</option>
							<option value="6">教育/培训</option>
							<option value="7">市场/媒介</option>
							<option value="8">娱乐/休闲</option>
							<option value="9">建筑</option>
							<option value="10">餐饮</option>
						</select>
						<div class="tips"></div>
					</div>
				</div>


				<div class="form-group">
					<div class="label">
						<label>招聘要求：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="cominterest"
							data-validate="required:请输入招聘要求" />
						<div class="tips"></div>
					</div>
				</div>



				<div class="form-group">
					<div class="label">
						<label>公司简介：</label>
					</div>
					<div class="field">
						<textarea name="comcontent" class="input"
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