<%@page import="com.huatai.dao.TopicsDao"%>
<%@page import="com.huatai.dao.impl.TopicsDaoImpl"%>
<%@page import="com.huatai.entity.Topic"%>

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
	function callBack1(code, 
	path, msg) {

		$("input[name=file]").val(path);

		$("#dressPic").attr("src", "/upload/" + path);

		$("#dressPic").show();

		$("#dressPic").on("load", function() {
			resizeImg(150, 90, "dressPic");
		});

	}
</script>
</head>
<body>
	<%
		TopicsDao topicsDao = new TopicsDaoImpl();
		List<Topic> topicList = topicsDao.getAllTopics();
	%>

	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>增加内容</strong>
		</div>
		<div class="body-content">
			<form method="get" enctype="multipart/form-data"
				action="do_news_add.jsp" class="form-x">

				<div class="form-group">
					<div class="label">
						<label>类别：</label>
					</div>
					<div class="field">
						<select name="ntid" style="width: 150px" class="input w50">
							<option value="-1">请选择新闻类别</option>
							<%
								for (Topic topic : topicList) {
							%>
							<option value='<%=topic.getTid()%>'>
								<%=topic.getTname()%></option>
							<%
								}
							%>
						</select>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="ntitle"
							data-validate="required:请输入标题" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>作者：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="nauthor" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>摘要：</label>
					</div>
					<div class="field">
						<textarea class="input" name="nsummary" style="height: 90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>内容：</label>
					</div>
					<div class="field">
						<textarea name="ncontent" class="input"
							style="height: 200px; border: 1px solid #ddd;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>图片：</label>
					</div>
					<div class="field">
						<iframe
							src="${pageContext.request.contextPath}/inc/upload.jsp?callBack=callBack1"
							style="border: 0px; height: 30px;" scrolling="no"></iframe>
						<input type="hidden" id="url1" name="file" class="input tips"
							style="width: 20%; float: left;" value="" /> <img id="dressPic"
							src="/upload/${News.npicpath}" alt=""
							${empty News.npicpath?"style='display: none;'":""} />
						<!-- <input type="file" id="url1" name="file" class="input tips"
							style="width: 20%; float: left;" value="" /> -->
						<!-- data-toggle="hover"
							data-place="right" data-image="" 预览图片 -->
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