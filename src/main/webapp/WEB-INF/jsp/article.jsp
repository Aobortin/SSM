<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
			<div class="avatar-cover">
				<img alt="" src="image/avatar/${currentUser.userName}.jpeg"/>
			</div>
			<h1>我不是小偷</h1>
			<p class="write-time">2017.01.01</p>
			<div class="article">
				<p>　　“正面”，一个警官严肃的说着，同时问道“姓名”。</p>
				<p>　　“胡大发”，镜头前，一个十八九岁的男孩子答道，同时抬起头，看着镜头。</p>
				<p>　　“左转，年龄”，警官问。</p>
				<p>　　“十八岁，嗯，快到十九了!”男孩子配合着转向左边。</p>
				<p>　　“向后转，第几次了。”</p>
				<p>　　“少管所一次，拘留两次，第一次到这里”</p>
				<p>　　“知道自己的刑期吗？”</p>
				<p>　　“一年！”</p>
				<p>　　“拿着你的衣服，过去吧！”警官其实并不关心你到底是谁，你犯了什么罪！只要有人在他面前，就会重复上面的所谓的谈话！</p>
			</div>
		</div>
	</section>

<jsp:include page="../include/foot.jsp"></jsp:include>
</body>
</html>