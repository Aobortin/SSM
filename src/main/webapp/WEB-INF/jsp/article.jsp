<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>	
<html>
<head>
	<title>文章</title>
	<link rel="stylesheet" type="text/css" href="css/article.css"/>
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/article.js"></script>
</head>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<section class="page">
		<div class="content">
			<%-- <div class="avatar-cover">
				<img alt="" src="image/avatar/${currentUser.userName}.jpeg"/>
			</div> --%>
			<div class="embed-plugin">
				<c:if test="${article.embedUrl!=null}">
					<audio autoplay controls="controls" loop="loop" preload="auto"
				            	src="${article.embedUrl}">
				      		<!-- 你的浏览器版本太低，不支持audio标签 -->
					</audio>
				</c:if>
			</div>
			<h1>${article.articleTitle}</h1>
			<p class="write-time">${article.createTime}</p>
			<div class="article">
				${article.articleContent}
			</div>
		</div>
	</section>

<jsp:include page="../include/foot.jsp"></jsp:include>
</body>
</html>