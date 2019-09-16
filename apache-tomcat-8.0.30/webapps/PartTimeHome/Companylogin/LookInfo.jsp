<%@page import="com.huatai.biz.impl.CompanyBizImpl"%>
<%@page import="com.huatai.biz.CompanyBiz"%>
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
			resizeImg(150, 90, "dressPic");
		});

	}
	function clickdel() {
		return confirm("即将删除所有职位及公司简历信息!");
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
				//String delcomid = request.getParameter("compid");
				String comuser = (String) request.getSession().getAttribute("comuser");
				UserBiz userbiz = new UserBizImpl();
				UserInfo userid = userbiz.getUserid(comuser);
				String delcomid = userid.getUserid();
			%>
			<form method="get" enctype="multipart/form-data"
				action="del_lookinfo.jsp" class="form-x">

				<%
					//查询登录用的对应的简历,并显示
					CompanyBiz Ciz = new CompanyBizImpl();
					Company comlist = Ciz.getComInfoByUCid(delcomid);
					//System.out.println("comlist)=" + list.size());
					if (comlist == null) {
				%>
				<div style="margin-left: 200px; color: #c0c0c0">
					<center>暂无数据</center>
				</div>
				<%
					} else {

						//System.out.println("list = " + list + ",list.size()=" + list.size());
				%>
				<input type="hidden" value="<%=delcomid%>" name="comuid">

				<div class="form-group">
					<div class="label">
						<label>企业名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=comlist.getComname()%>" name="comname"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>联系人：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=comlist.getComhrman()%>" name="comHrman"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>电话：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="comphone"
							value="<%=comlist.getComNumber()%>" disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>地址：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=comlist.getComaddress()%>" name="comaddress"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>行业：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="resnumber"
							value="<%=comlist.getComkind()%>" disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>


				<div class="form-group">
					<div class="label">
						<label>招聘要求：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"
							value="<%=comlist.getCominterset()%>" name="cominterest"
							disabled="disabled" />
						<div class="tips"></div>
					</div>
				</div>



				<div class="form-group">
					<div class="label">
						<label>公司简介：</label>
					</div>
					<div class="field">
						<textarea name="comcontent" class="input"
							style="height: 200px; border: 1px solid #ddd;"
							disabled="disabled"><%=comlist.getRestimate()%></textarea>
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
						<button class="button bg-main icon-check-square-o" type="submit"
							onclick='return clickdel()'>删除</button>
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
