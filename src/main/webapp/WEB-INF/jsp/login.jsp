<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();
String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<!DOCTYPE html>	
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="icon" href="image/love_bird.png" type="image/x-icon"/>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="css/general.css"/>
<link rel="stylesheet" type="text/css" href="css/login.css"/>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body>
	<header>
		<div>
			<section class="header-left">
				<a href="${basePath}/SSM/main"><img alt="风雪佳人" src="image/logo.png"/></a>
				<div class="sign">
					<span>风雪人生路，佳人伴行之</span>
				</div>
			</section>
			<section class="header-right">
				
			</section>
		</div>
	</header>
	<section class="main">
		<div class="main-login">
			<div class="login-form">
				<p class="login-title">会员登录</p>
				<form action="${basePath}/SSM/main" method="post">
					<div class="login-zh">
						<input id="userName" name="userName" placeholder="请输入邮箱/ID/手机号"/>
					</div>
					<span class="vali-msg vali-userName">请输入用户名</span>
					<div class="login-mm">
						<input id="userPwd" name="userPwd" placeholder="请输入密码" type="password"/>
					</div> 
					<span class="vali-msg vali-userPwd">请输入密码</span>
					<div class="auto-login">
						<input type="checkbox" id="autoLogin"/><label for="autoLogin">两周内自动登录</label>
						<a href="${basePath}/SSM/account/index">忘记密码?</a>	
					</div>
					<span class="vali-msg vali-login">账号或密码错误，请检查后重试</span>
					<div class="login-btn clearfix">
						<!-- <input type="submit" value="登录"/> -->
						<a class="submit">登录</a>
					</div>
					<div class="login-other">
					</div>
					<p class="register"><a href="${basePath}/SSM/register">还不是会员？立即注册</a></p>
				</form>
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