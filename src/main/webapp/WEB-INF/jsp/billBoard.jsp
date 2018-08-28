<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>	
<html>
<head>
	<title>情感</title>
	<link rel="stylesheet" type="text/css" href="css/billBoard.css"/>
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/billBoard.js"></script>
</head>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<section class="main">
		<div class="side-bar">
			<h3><a href="javascript:void(0)">热门榜单<i>向上箭头</i></a></h3>
			<ul>
				<li><a href="javascript:void(0)" class="current">酷狗飙升榜</a></li>
				<li><a href="javascript:void(0)">酷狗TOP500</a></li>
				<li><a href="javascript:void(0)">网络红歌榜</a></li>
				<li><a href="javascript:void(0)">DJ热歌榜</a></li>
				<li><a href="javascript:void(0)">华语新歌榜</a></li>
				<li><a href="javascript:void(0)">欧美新歌榜</a></li>
				<li><a href="javascript:void(0)">韩国新歌榜</a></li>
				<li><a href="javascript:void(0)">日本新歌榜</a></li>
				<li><a href="javascript:void(0)">明日之子第二季榜</a></li>
				<li><a href="javascript:void(0)">2018中国好声音榜</a></li>
				<li><a href="javascript:void(0)">金曲捞第二季榜</a></li>
				<li><a href="javascript:void(0)">2018跨界歌王榜</a></li>
			</ul>
			<h3><a href="javascript:void(0)">特色音乐榜<i>向上箭头</i></a></h3>
			<ul>
				<li><a href="javascript:void(0)">电音热歌榜</a></li>
				<li><a href="javascript:void(0)">影视金曲榜</a></li>
				<li><a href="javascript:void(0)">ACG热歌榜</a></li>
				<li><a href="javascript:void(0)">粤语金曲榜</a></li>
				<li><a href="javascript:void(0)">欧美金曲榜</a></li>
				<li><a href="javascript:void(0)">古风金曲榜</a></li>
				<li><a href="javascript:void(0)">纯音乐榜</a></li>
			</ul>
			<h3><a href="javascript:void(0)">全球榜<i>向上箭头</i></a></h3>
			<ul>
				<li><a href="javascript:void(0)">美国BillBoard榜</a></li>
				<li><a href="javascript:void(0)">英国单曲榜</a></li>
				<li><a href="javascript:void(0)">日本公信榜</a></li>
				<li><a href="javascript:void(0)">韩国M-net音乐榜</a></li>
				<li><a href="javascript:void(0)">中国TOP排行榜</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="title">
				<h3>酷狗飙升榜</h3>
				<a href="" title="播放全部"><i>播放图标</i>播放全部</a>
			</div>
			<div class="rank-wrap">
				<ul>
					<c:forEach items="${articles}" var="article" varStatus="status">
						<li>
							<span class="btn_check"></span>
							<c:choose>
								<c:when test="${status.count<=3}">
									<span class="num top"><strong>${status.count}</strong></span>
								</c:when>
								<c:otherwise>
									<span class="num"><strong>${status.count}</strong></span>
								</c:otherwise>
							</c:choose>
							<span class="tip"></span>
							<a href="/SSM/article?articleId=${article.id}">${article.articleTitle}</a>
							<span class="update-time">${article.createTime}</span>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</section>
<jsp:include page="../include/foot.jsp"></jsp:include>
</body>
</html>