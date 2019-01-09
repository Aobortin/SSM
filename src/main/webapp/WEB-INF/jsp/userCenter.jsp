<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>	
<html>
<head>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/userCenter.js"></script>
<link rel="stylesheet" type="text/css" href="css/userCenter.css"/>
<link href="assets/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="assets/umeditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="assets/umeditor/umeditor.min.js"></script>
<script type="text/javascript" src="assets/umeditor/lang/zh-cn/zh-cn.js"></script>
<title>用户中心</title>
</head>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<section class="info-center">
		<div class="avatar-side">
			<div class="avatar-cover">
				<img alt="" src="image/avatar/${currentUser.userName}.jpg"/>
			</div>
			<div class="avatar-txt">
				<p><a href="javascript:void(0)">${currentUser.nickName}</a></p>
				<p>(账号:${currentUser.userName})</p>
				<p><a href="">开通佳人豪华 VIP>></a></p>
			</div>
		</div>
		<div class="avatar-content">
			<div class="content-title clearfix">
				<h4>我的信息</h4>
				<span>Personal information</span>
			</div>
			<div class="content-body">
				<div class="module-name">
					<ul class="clearfix">
						<li class="selected"><a href="javascript:void(0)">修改头像</a></li>
						<li><a href="javascript:void(0)">编辑资料</a></li>
						<li><a href="javascript:void(0)">修改密码</a></li>
						<li><a href="javascript:void(0)">我的文章</a></li>
					</ul>
				</div>
				<div class="module-body clearfix">
					<p class="desc">设置一个你喜欢的头像:</p>
					<div class="avatar-demo">
						<img alt="" src="image/avatar/${currentUser.userName}.jpg"/>
					</div>
					<div class="avatar-upload">
						<form name="uploadPortrait" action="${basePath}/SSM/uploadFile" method="post"  enctype="multipart/form-data">
							<p>请选择图片文件，最佳尺寸400 x 400，支持JPG，jpg，GIF，PNG。</p>
					        <a type="button" class="btn" id="browse">浏览</a>
					        <input type="file" name="file" id="fileinp">
							<a type="button" class="btn upload" >上传</a>
							<!-- UEeditor图片上传功能实现 https://blog.csdn.net/mlc1218559742/article/details/51952808 -->
						</form>
					</div>
				</div>
				<div class="module-body clearfix hide">
					<form action="${basePath}/SSM/uploadFile" name="upfile">
						<label for="nickName">修改昵称</label><input id="nickName" name="nickName" value="${currentUser.nickName}"/>
						<!-- <script id="editor" type="text/plain" style="width:500px;height:200px;"></script> -->
						<div id="editor" style="width:500px;height:200px;"></div>
					</form>
				</div>
				<div class="module-body clearfix hide">
					<label for="userPwd">修改密码</label><input type="password" id="userPwd" name="userPwd" value="${currentUser.userPwd}"/>
				</div>
				<div class="module-body clearfix hide">
					<div class="rank-wrap" id="articleList">
						<a href="javascript:void(0)" class="write-article">写文章</a>
						<ul>
							<c:forEach items="${articles}" var="article" varStatus="status">
								<li>
									<a href="/SSM/article?articleId=${article.id}">${article.articleTitle}</a>
									<span class="update-time">${article.createTime}</span>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="clearfix hide" id="writeArticle">
						<a href="javascript:void(0)" class="return-list">返回列表</a>
						<form name="writeArticle" action="${basePath}/SSM/writeArticle" method="post">
							<input type="hidden" name="authorId" value="${currentUser.id}"/>
							<input type="hidden" name="authorName" value="${currentUser.nickName}"/>
							<input name="articleTitle" class="article-title" maxlength="128" placeholder="请在此输入标题"/>
							<div id="myEditor" style="width:100%;height:240px;"></div>
							<textarea name="articleContent" class="article-content hide"></textarea>
							<a type="button" class="btn submit" >提交</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<jsp:include page="../include/foot.jsp"></jsp:include>
</html>