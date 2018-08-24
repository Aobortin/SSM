<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>	
<html>
<head>
	<title>会员中心</title>
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
	<link rel="stylesheet" type="text/css" href="css/member.css"/>
	<script type="text/javascript" src="js/member.js"></script>
</head>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<section class="top-banner">
		<div class="slider-wrap">
			<div class="banner">
				<ul>
					<li style="opacity:1;"><a href="">换肤新体验 酷狗英雄主题</a></li>
					<li><a href="">繁星网 缔造星途神话</a></li>
				</ul>
				<a href="javascript:void(0);" class="slider-prev">prev</a>
				<a href="javascript:void(0);" class="slider-next">next</a>
			</div>
			<div class="slider-pages">
				<ul>
					<li><a href="javascript:void(0);"  class="hover">1</a></li>
					<li><a href="javascript:void(0);">2</a></li>
				</ul>
			</div>
		</div>
	</section>
	<section class="white-panel">
		<div class="service-panel">
			<ul class="clearfix">
				<li>
					<p class="term">真心会员12个月</p>
					<p class="price">1.1元/天</p>
					<p class="now-price">超值会员价<em>399</em>元</p>
					<a href="">立即开通</a>
				</li>
				<li>
					<p class="term">真心会员3个月</p>
					<p class="price">4.3元/天</p>
					<p class="now-price">超值会员价<em>389</em>元</p>
					<a href="">立即开通</a>
				</li>
				<li>
					<p class="term">真心会员1个月</p>
					<p class="price">8.6元/天</p>
					<p class="now-price">超值会员价<em>259</em>元</p>
					<a href="">立即开通</a>
				</li>
			</ul>
		</div>
	</section>
	<section class="privilege-panel">
		<div class="member-privilege">
			<ul class="clearfix">
				<li class="th">
					<p class="fl">特权名称</p>
					<p class="fr">特权使用率</p>
				</li>
				<li>
					<p class="fl">免费看信发信</p>
					<p class="fr">100%</p>
				</li>
				<li>
					<p class="fl">珍爱网APP特权大礼包</p>
					<p class="fr">92%</p>
				</li>
			</ul>
		</div>
	</section>
<jsp:include page="../include/foot.jsp"></jsp:include>
</body>
</html>