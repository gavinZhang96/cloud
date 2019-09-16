<%@page import="com.huatai.dao.TopicsDao"%>
<%@page import="com.huatai.dao.impl.TopicsDaoImpl"%>
<%@page import="com.huatai.entity.Topic"%>
<%@page import="com.huatai.entity.*"%>
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

	}
</script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>增加内容</strong>
		</div>
		<%
			//从request域获取News实例
			News news = (News) request.getSession().getAttribute("news");
			//System.out.println("news = " + news.getTopic());
			String tid = news.getTopic().getTid();
			//System.out.println("tid = " + tid);

			boolean istrue = "1".equals(tid.trim());
			//System.out.println("istrue = " + istrue);

			TopicsDao topicsDao = new TopicsDaoImpl();
			List<Topic> topicList = topicsDao.getAllTopics();
		%>
		<div class="body-content">
			<form method="get" enctype="multipart/form-data"
				action="do_news_edit.jsp" class="form-x">
				<input type="hidden" name="nid" value="<%=news.getNid()%>" />
				<div class="form-group">
					<div class="label">
						<label>类别：</label>
					</div>
					<div class="field">
						<select name="ntid" style="width: 150px" class="input w50">
							<option value="-1">请选择新闻类别</option>
							<%
								for (Topic topic : topicList) {
									if (tid != null && tid.equals(topic.getTid())) {
							%>
							<option value='<%=topic.getTid()%>' selected="selected">
								<%=topic.getTname()%></option>
							<%
								} else {
							%>
							<option value='<%=topic.getTid()%>'>
								<%=topic.getTname()%></option>
							<%
								}
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
						<input type="text" class="input w50" value="<%=news.getNtitle()%>"
							name="ntitle" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>作者：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="nauthor"
							value="<%=news.getNauthor()%>" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>摘要：</label>
					</div>
					<div class="field">
						<textarea class="input" name="nsummary" style="height: 90px;"><%=news.getNsummary()%></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>内容：</label>
					</div>
					<div class="field">
						<textarea name="ncontent" class="input"
							style="height: 200px; border: 1px solid #ddd;"><%=news.getNcontent()%></textarea>
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
							style="width: 20%; float: left;" value="<%=news.getNpicpath()%>" />
						<img id="dressPic" src="/upload/<%=news.getNpicpath()%>" alt=""
							 width="150" height="90"/>

						<%
							String picPath = news.getNpicpath();
							picPath = picPath == null || "NULL".equals(picPath) ? "" : picPath;
							//System.out.println("上传图片~~" + picPath);
						%>
						<%=picPath%>
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
						<a href="index_newMsg.jsp">
							<button class="button bg-main icon-check-square-o" type="button"
								style="margin-left: 30px;">取消</button>
						</a>
						<button class="button bg-main icon-check-square-o" type="reset"
							style="margin-left: 30px;">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>