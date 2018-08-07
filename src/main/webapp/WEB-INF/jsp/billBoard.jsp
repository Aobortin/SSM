<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();
String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   
<!DOCTYPE html>	
<html>
<head>
	<meta charset="UTF-8">
	<title>榜单</title>
	<link rel="icon" href="image/love_bird.png" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="css/general.css"/>
	<link rel="stylesheet" type="text/css" href="css/billBoard.css"/>
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/billBoard.js"></script>
</head>
<body>
	<header>
		<h1><a href="###"><img alt="风雪佳人" src="image/logo.png"/></a></h1>
		<div class="top-search">
			<div class="search-input">
				<input type="text"/>
				<div class="search-btn">
					<i class="search-icon"></i>
					<span>搜索</span>
				</div>
			</div>
		</div>
		<div class="right-nav">
			<ul class="nav-list">
				<li><a href="">客服中心</a></li>
				<li><a href="">招贤纳士</a></li>
				<li><a href="">会员中心</a></li>
			</ul>
			<div class="login-area">
				<div id="login-out">
					<img class="user-img" src="image/Aobortin.jpg"/>
					<span class="user-name">${currentUser.nickName}</span>
					<div class="user-menu">
						<div class="topArrow1"></div>
						<div class="topArrow2"></div>
						<ul>
							<li><a href="">个人账号</a></li>
							<li><a href="">退出登录</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<nav>
		<div class="nav">
			<ul class="home-nav">
				<li><a href="${basePath}/SSM/main">首页</a></li>
				<li><a href="${basePath}/SSM/billBoard">榜单</a></li>
				<li><a href="">下载客户端</a></li>
				<li id="more"><a href="">更多</a></li>
			</ul>
			<ul class="second-menu">
                <li><a href="">电台</a></li>
                <li><a href="">MV</a></li>
                <li><a href="">歌单</a></li>
                <li><a href="">歌手</a></li>
            </ul>
			<ul class="sub-nav">
				<li><a href="" class="icon-nav1">音乐直播</a></li>
				<li><a href="" class="icon-nav2">酷狗LIVE</a></li>
				<li><a href="" class="icon-nav3">音乐人</a></li>
				<li><a href="" class="icon-nav4">商城</a></li>
			</ul>
		</div>
	</nav>
	<section class="main">
		<div class="side-bar">
			<h3><a href="">热门榜单<i>向上箭头</i></a></h3>
			<ul>
				<li><a href="" class="current">酷狗飙升榜</a></li>
				<li><a href="">酷狗TOP500</a></li>
				<li><a href="">网络红歌榜</a></li>
				<li><a href="">DJ热歌榜</a></li>
				<li><a href="">华语新歌榜</a></li>
				<li><a href="">欧美新歌榜</a></li>
				<li><a href="">韩国新歌榜</a></li>
				<li><a href="">日本新歌榜</a></li>
				<li><a href="">明日之子第二季榜</a></li>
				<li><a href="">2018中国好声音榜</a></li>
				<li><a href="">金曲捞第二季榜</a></li>
				<li><a href="">2018跨界歌王榜</a></li>
			</ul>
			<h3><a href="">特色音乐榜<i>向上箭头</i></a></h3>
			<ul>
				<li><a href="">电音热歌榜</a></li>
				<li><a href="">影视金曲榜</a></li>
				<li><a href="">ACG热歌榜</a></li>
				<li><a href="">粤语金曲榜</a></li>
				<li><a href="">欧美金曲榜</a></li>
				<li><a href="">古风金曲榜</a></li>
				<li><a href="">纯音乐榜</a></li>
			</ul>
			<h3><a href="">全球榜<i>向上箭头</i></a></h3>
			<ul>
				<li><a href="">美国BillBoard榜</a></li>
				<li><a href="">英国单曲榜</a></li>
				<li><a href="">日本公信榜</a></li>
				<li><a href="">韩国M-net音乐榜</a></li>
				<li><a href="">中国TOP排行榜</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="title">
				<h3>酷狗飙升榜</h3>
				<a href="" title="播放全部"><i>播放图标</i>播放全部</a>
			</div>
			<div class="rank-wrap">
				<ul>
					<li>
						<span class="btn_check"></span>
						<span class="num top"><strong>1</strong></span>
						<span class="tip"></span>
						<a href="">蔡徐坤 - It's You</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num top"><strong>2</strong></span>
						<span class="tip"></span>
						<a href="">蔡徐坤 - You Can Be My GirlFriend</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num top"><strong>3</strong></span>
						<span class="tip"></span>
						<a href="">蔡徐坤 - Pull Up</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>4</strong></span>
						<span class="tip"></span>
						<a href="">M哥 - 又一次爱上你</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>5</strong></span>
						<span class="tip"></span>
						<a href="">龙梅子、老猫 - 都说</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>6</strong></span>
						<span class="tip"></span>
						<a href="">洛天依 - 相知相爱到别离</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>7</strong></span>
						<span class="tip"></span>
						<a href="">门丽 - 今夜又唱老情歌</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>8</strong></span>
						<span class="tip"></span>
						<a href="">iKON - 바람 (FREEDOM)</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>9</strong></span>
						<span class="tip"></span>
						<a href="">蒋家驹 (蒋蒋) - 偶尔</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>10</strong></span>
						<span class="tip"></span>
						<a href="">霍尊 - 离人泪【寻仙十周年主题曲】</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>11</strong></span>
						<span class="tip"></span>
						<a href="">莫言 - 黄梅戏</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>12</strong></span>
						<span class="tip"></span>
						<a href="">音乐走廊、依然 - 不要对我说再见</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>13</strong></span>
						<span class="tip"></span>
						<a href="">李梓轩 - 紫色烟花</a>
						<span class="update-time">3:45</span>
					</li>
					<li>
						<span class="btn_check"></span>
						<span class="num"><strong>14</strong></span>
						<span class="tip"></span>
						<a href="">李俊佑 - 醉千年</a>
						<span class="update-time">3:45</span>
					</li>
				</ul>
			</div>
		</div>
	</section>
	<footer>
		<ul class="navi_link">
			<li><a href="">联系客服</a></li>
			<li><a href="">关于我们</a></li>
			<li><a href="">联系我们</a></li>
			<li><a href="">无线业务</a></li>
			<li><a href="">注册条款</a></li>
			<li><a href="">区块链</a></li>
			<li><a href="">招聘信息</a></li>
			<li><a href="">交友信息</a></li>
			<li><a href="">隐私保护</a></li>
			<li><a href="">帮助中心</a></li>
			<li><a href="">安全中心</a></li>
		</ul>
		<p>&copy;2018 版权所有</p>
	</footer>
</body>
</html>