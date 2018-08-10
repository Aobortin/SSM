<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>	
<html>
<head>
<script type="text/javascript" src="css/userCenter.css"></script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/userCenter.js"></script>
<title>用户中心</title>
</head>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<%-- <form name="uploadPortrait" action="${basePath}/SSM/uploadFile" method="post"  enctype="multipart/form-data">
		<h1>使用spring mvc提供的类的方法上传文件</h1>
		<input type="file" name="file">
		<input type="submit" value="upload"/>
	</form> --%>
	<section class="info-center">
		<div class="avatar-side"></div>
		<div class="avatar-content"></div>
	</section>
</body>
<jsp:include page="../include/foot.jsp"></jsp:include>
</html>