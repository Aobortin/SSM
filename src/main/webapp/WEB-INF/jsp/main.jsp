<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();
String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   
<!DOCTYPE html>	
<html>
<head>
	<meta charset="UTF-8">
	<title>主页</title>
	<link rel="icon" href="image/love_bird.png" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="css/general.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
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
			<ul>
				<li><a href="">客服中心</a></li>
				<li><a href="">招贤纳士</a></li>
				<li><a href="">会员中心</a></li>
			</ul>
			<div class="login-area">
				<div id="login-out">
					<img class="user-img" src="image/Aobortin.jpg"/>
					<span class="user-name">Aobortin</span>
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
	<div class="slider-wrap">
		<div class="banner">
			<ul>
				<li><a href="">换肤新体验 酷狗英雄主题</a></li>
				<li><a href="">繁星网 缔造星途神话</a></li>
				<li><a href="">酷狗蓝牙耳机，听歌 通话 煲剧10小时</a></li>
			</ul>
			<a href="javascript:void(0);" class="slider-prev">prev</a>
			<a href="javascript:void(0);" class="slider-next">next</a>
		</div>
		<div class="slider-pages">
			<ul>
				<li><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
			</ul>
		</div>
	</div>
	<section class="content">
		<div class="subContentM">
			<div class="SelectHotSonglist">
				<div class="item-title">
					<h3><b>精选</b>歌单</h3>
					<a target="_blank" href="" class="more">更多</a>
				</div>
				<div class="item-content">
					<div class="cpt cptBig">
						<img alt="" src="image/cptBig.jpg">
					</div>
					<div class="cpt cptMid">
						<img alt="" src="image/mid1.jpg">
					</div>
					<div class="cpt cptMid">
						<img alt="" src="image/mid2.jpg">
					</div>
					<div class="cpt cptMid">
						<img alt="" src="image/mid3.jpg">
					</div>
					<div class="cpt cptMid">
						<img alt="" src="image/mid4.jpg">
					</div>
				</div>
			</div>
			<div class="HotSonglist">
				<div class="item-title">
					<h3><b>热门</b>榜单</h3>
					<a target="_blank" href="" class="more">更多</a>
				</div>
				<div class="listItem">
					<a href="">
						<img alt="" src="image/bsb.jpg"/>
						<div class="list">
							<dl>
                                 <dt>酷狗飙升榜</dt>
                                  <dd>1 . 摩登兄弟刘宇宁 - 让酒【沙海电视剧插曲】</dd>
                                  <dd>2 . 朱一龙、安悦溪 - 许你浮生若梦【许你浮生若梦电视剧主题曲】</dd>
                             </dl>
						</div>
					</a>
				</div>
				<div class="listItem">
					<a href="">
						<img alt="" src="image/top500.jpg"/>
						<div class="list">
							<dl>
                            	<dt>酷狗TOP500</dt>
	                            <dd>1 . Olly Murs - That Girl</dd>
	                            <dd>2 . 小潘潘、小峰峰 - 学猫叫</dd>
                            </dl>
						</div>
					</a>
				</div>
				<div class="listItem">
					<a href="">
						<img alt="" src="image/hgb.jpg"/>
						<div class="list">
							<dl>
                            	<dt>网络红歌榜</dt>
                            	<dd>1 . 摩登兄弟 - 终于走散了【罗曼蒂克振兴史电影主题曲】</dd>
                            	<dd>2 . 金南玲 - 逆流成河【我在锡林郭勒等你电视剧插曲】</dd>
                            </dl>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="subContentM">
			<div class="newSongList">
				<div class="item-title">
					<h3><b>新歌</b>首发</h3>
					<a target="_blank" href="" class="more">更多</a>
				</div>
				<div class="item-content">
					<div class="show-content">
						<ul>
							<li><a href=""><span class="song-name">李宇春 - 年轻气盛 (Live)</span><span class="song-time">04:38</span></a></li>
							<li><a href=""><span class="song-name">朱一龙、安悦溪 - 许你浮生若梦【许你浮生若梦电视剧主题曲】</span><span class="song-time">03:31</span></a></li>
							<li><a href=""><span class="song-name">刘宇宁 - 让酒【沙海电视剧插曲】</span><span class="song-time">02:53</span></a></li>
							<li><a href=""><span class="song-name">宋茜、杜海涛 - VickiNana (Live)</span><span class="song-time">03:03</span></a></li>
							<li><a href=""><span class="song-name">文兆杰、田燚、Lil.Jet - 他他他 (Live)</span><span class="song-time">03:19</span></a></li>
							<li><a href=""><span class="song-name">宋孟君、陈雅森 - 阴阳师</span><span class="song-time">03:21</span></a></li>
							<li><a href=""><span class="song-name">夏婉安 - 无可救药</span><span class="song-time">03:01</span></a></li>
							<li><a href=""><span class="song-name">艾热、JelloRio李佳隆 - 星球坠落 (Live)</span><span class="song-time">03:41</span></a></li>
						</ul>
					</div>
				</div>
				<div class="pages p">
                    <a class="prev disable">上一页</a>
                    <div class="page"><span class="currentPage">1</span>/<span class="allPage">3</span></div>
                    <a class="next">下一页</a>
                </div>
			</div>
			<div class="albumList">
				<div class="item-title">
					<h3><b>推荐</b>MV</h3>
					<a target="_blank" href="" class="more">更多</a>
				</div>
				<div class="item-content">
					<div class="cpt cptBigL">
						<a href=""><img alt="" src="image/victory.jpg"></a>
					</div>
					<div class="cpt cptMidL">
						<a href=""><img alt="" src="image/ysy.jpg"/>
							<div class="cptB">
                                <p class="songListName">云裳谣 (舞蹈练习室版)</p>
                                <p class="songListSinger">SING女团</p>
                            </div>
						</a>
					</div>
					<div class="cpt cptMidL">
						<a href=""><img alt="" src="image/kll.jpg"/>
							<div class="cptB">
                                <p class="songListName">卡路里</p>
                                <p class="songListSinger">火箭少女101</p>
                            </div>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="subContentM limitHight">
			<div class="HotRadio">
				<div class="item-title">
					<h3><b>热门</b>电台</h3>
					<a target="_blank" href="" class="more">更多</a>
				</div>
				<div class="item-content">
					<ul>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_1.jpg">
								</div>
								<div class="radioKind">KTV必点曲</div>
								<div class="radioName">陈奕迅 - 婚礼的祝福</div>
							</a>
						</li>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_2.jpg">
								</div>
								<div class="radioKind">中文DJ</div>
								<div class="radioName">李佩玲 - 心有独钟(Live)</div>
							</a>
						</li>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_3.jpg">
								</div>
								<div class="radioKind">酷狗热歌</div>
								<div class="radioName">那英 - 放爱一条生路</div>
							</a>
						</li>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_4.jpg">
								</div>
								<div class="radioKind">网络红歌</div>
								<div class="radioName">斯琴高丽 - 情如花</div>
							</a>
						</li>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_5.jpg">
								</div>
								<div class="radioKind">经典</div>
								<div class="radioName">G.E.M.邓紫棋 - 泡沫 - DJ版</div>
							</a>
						</li>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_6.jpg">
								</div>
								<div class="radioKind">老情歌</div>
								<div class="radioName">索朗扎西 - 郎啊郎</div>
							</a>
						</li>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_7.jpg">
								</div>
								<div class="radioKind">新歌</div>
								<div class="radioName">Owl City - Wolf Bite</div>
							</a>
						</li>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_8.jpg">
								</div>
								<div class="radioKind">动漫</div>
								<div class="radioName">刘若英、黄立行 - 分开旅行</div>
							</a>
						</li>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_9.jpg">
								</div>
								<div class="radioKind">轻音乐</div>
								<div class="radioName">GALA - 点豆豆</div>
							</a>
						</li>
						<li>
							<a href="">
								<div class="radioLogo">
									<img alt="" src="image/radio_10.jpg">
								</div>
								<div class="radioKind">最爱成名曲</div>
								<div class="radioName">Alicia Keys - 28 Thousand Days</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="HotSinger">
				<div class="item-title">
                    <h3><b>热门</b>歌手</h3>
                    <div class="tabT" id="tabMenu">
                    	<span class="active" data="0">华语</span>
                    	<span data="1">欧美</span>
                    	<span data="2" class="">日韩</span>
                    	<span data="3"><a class="more" href="">更多</a></span>
                    </div>
                </div>
                <div class="item-content">
                	<div class="cpt cptMid">
                		<a href="">
                			<img alt="" src="image/Beethoven.jpg">
                		</a>
                	</div>
                	<div class="cpt cptMid">
                		<a href="">
                			<img alt="" src="image/crazyFrog.jpg">
                		</a>
                	</div>
                	<div class="cpt cptSmall">
                		<a href="">
                			<img alt="" src="image/dmx.jpg">
                		</a>
                	</div>
                	<div class="cpt cptSmall">
                		<a href="">
                			<img alt="" src="image/Rng.jpg">
                		</a>
                	</div>
                	<div class="cpt cptSmall">
                		<a href="">
                			<img alt="" src="image/Mike.jpg">
                		</a>
                	</div>
                	<ul class="list-menu">
                		<li class="list-hover">page1</li>
                		<li>page2</li>
                		<li>page3</li>
                	</ul>
                </div>
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