<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <script type="text/javascript">
   if(${code eq "success"}){
      var execStr = "window.parent.${param.callBack}('${code}','${path}','${msg}','${filename}')";
      eval(execStr);
   }else if(${not empty msg}){
   
     alert("${msg}");
   }
   
     function sub(){
        document.getElementsByTagName("form")[0].submit();
     }
   </script>
  </head>
  
  <body>
    
		<form action="${pageContext.request.contextPath}/servlet/UploadServlet" method="post"
		 enctype="multipart/form-data">
		  <input type="file" name="uploadFile" onchange="sub();"/>
		  <input type="hidden" name="callBack" value="${param.callBack}"/>
		  <input type="hidden" name="type" value="${empty param.type?'jpg,jpeg,bmp,gif,png,doc,docx,xls,xlsx,ppt,pptx,txt':param.type}"/>
		  <input type="hidden" name="size" value="${param.size}"/>
		  <input type="hidden" name="isAtta" value="${param.isAtta}"/>
		</form>
  </body>
</html>
