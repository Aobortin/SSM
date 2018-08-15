<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>	
<html>
<head>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/userCenter.js"></script>
<link rel="stylesheet" type="text/css" href="css/userCenter.css"/>
<title>用户中心</title>
</head>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<section class="info-center">
		<div class="avatar-side">
			<div class="avatar-cover">
				<img alt="" src="image/avatar/${currentUser.userName}.jpeg"/>
			</div>
			<div class="avatar-txt">
				<p><a href="javascript:void(0)">${currentUser.nickName}</a></p>
				<p>(账号:${currentUser.userName})</p>
				<p><a href="">开通酷狗豪华 VIP>></a></p>
			</div>
		</div>
		<div class="avatar-content">
			<div class="content-title clearfix">
				<h4>我的酷狗</h4>
				<span>Personal information</span>
			</div>
			<div class="content-body">
				<div class="module-name">
					<ul class="clearfix">
						<li class="selected"><a href="javascript:void(0)">修改头像</a></li>
						<li><a href="javascript:void(0)">编辑资料</a></li>
						<li><a href="javascript:void(0)">修改密码</a></li>
						<li><a href="javascript:void(0)">账号安全</a></li>
					</ul>
				</div>
				<div class="module-body clearfix">
					<p class="desc">设置一个你喜欢的头像:</p>
					<div class="avatar-demo">
						<img alt="" src="image/avatar/${currentUser.userName}.jpeg"/>
					</div>
					<div class="avatar-upload">
						<form name="uploadPortrait" action="${basePath}/SSM/uploadFile" method="post"  enctype="multipart/form-data">
							<p>请选择图片文件，最佳尺寸400 x 400，支持JPG，JPEG，GIF，PNG。</p>
					        <a type="button" class="btn" id="browse">浏览</a>
					        <input type="file" name="file" id="fileinp">
							<a type="button" class="btn upload" >上传</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<jsp:include page="../include/foot.jsp"></jsp:include>
</html>