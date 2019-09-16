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
<link rel="stylesheet" href="../../css/Hrlogin/pintuer.css">
<link rel="stylesheet" href="../../css/Hrlogin/admin.css">
<script src="../../js/jquery.js"></script>
<!-- 输入合法性的验证 -->
<script src="../../js/pintuer.js"></script>
<script src="../../js/img.js"></script>
<script type="text/javascript">
	function callBack1(code, path, msg) {

		$("input[name=file]").val(path);

		$("#dressPic").attr("src", "/upload/" + path);

		$("#dressPic").show();

		$("#dressPic").on("load", function() {
			resizeImg(150, 90, "dressPic");
		});
		alert("上传文件已就绪，请提交。");
	}
</script>
</head>
<body>

	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>上传模板</strong>
		</div>
		<div class="body-content">
			<form method="get" enctype="multipart/form-data"
				action="do_model_upload.jsp" class="form-x">

				<div class="form-group">
					<div class="label">
						<label>模板名称:</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="modname" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>简历描述:</label>
					</div>
					<div class="field">
						<textarea class="input" name="modcontent"
							style="height: 150px; border: 1px solid #ddd;"></textarea>
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>上传简历模板:</label>
					</div>
					<div class="field">
						<iframe
							src="${pageContext.request.contextPath}/inc/upload.jsp?callBack=callBack1"
							style="border: 0px; height: 30px;" scrolling="no"></iframe>
						<input type="hidden" id="url1" name="file" class="input tips"
							style="width: 20%; float: left;" value="" />
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