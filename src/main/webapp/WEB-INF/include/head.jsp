<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>  
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>
<%
String path = request.getContextPath();
String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   
<!DOCTYPE html>	
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="image/love_bird.png" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="css/general.css"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="js/head.js"></script>
</head>
<body>
<header>
		<h1>顶部LOGO</h1>
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
				<li><a href="${basePath}/SSM/chat">客服中心</a></li>
				<li><a href="">招贤纳士</a></li>
				<li><a href="${basePath}/SSM/member">会员中心</a></li>
			</ul>
			<div class="login-area">
				<c:choose>
					<c:when test="${currentUser.nickName==null}">
						<div id="login-in">
							<a href="${basePath}/SSM/login" class="login-btn">登录</a>
							<a href="${basePath}/SSM/register" class="regin-btn">注册</a>
						</div>
					</c:when>
					<c:otherwise>
						<div id="login-out">
							<img class="user-img" src="image/avatar/${currentUser.userName}.jpeg"/>
							<span class="user-name">${currentUser.nickName}</span>
							<div class="user-menu">
								<div class="topArrow1"></div>
								<div class="topArrow2"></div>
								<ul>
									<li><a href="${basePath}/SSM/userCenter">个人账号</a></li>
									<li><a href="${basePath}/SSM/exit">退出登录</a></li>
								</ul>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</header>
	<nav>
		<div class="nav">
			<ul class="home-nav">
				<li><a href="${basePath}/SSM/main">首页</a></li>
				<li><a href="${basePath}/SSM/billBoard">情感</a></li>
				<li><a href="">秘籍</a></li>
				<li id="more"><a href="javascript:void(0)">更多</a></li>
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
</body>
</html>