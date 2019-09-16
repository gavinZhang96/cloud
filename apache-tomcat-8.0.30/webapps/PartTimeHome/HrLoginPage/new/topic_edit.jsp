<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
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
	function check() {
		var tname = document.getElementById("tname");

		if (tname.value == "") {
			alert("请输入主题名称！！");
			tname.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>增加内容</strong>
		</div>
		<div class="body-content">
			<form action="do_topic_edit.jsp" method="post" class="form-x"
				onsubmit="return check()">

				<div class="form-group">
					<div class="label">
						<label>主题名称：</label>
					</div>
					<div class="field">
						<input name="tname" id="tname" type="text" class="input w50"
							value="<%=request.getParameter("tname")%>" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<input name="tid" type="hidden"
							value="<%=request.getParameter("tid")%>" />
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