<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();
String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<!DOCTYPE html>	
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link rel="icon" href="image/love_bird.png" type="image/x-icon"/>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="css/general.css"/>
<link rel="stylesheet" type="text/css" href="css/register.css"/>
<script type="text/javascript" src="js/register.js"></script>
<link rel="stylesheet" href="jquery-ui-1.12.1/jquery-ui.min.css">
<script type="text/javascript" src="jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/citySelect.js"></script>
</head>
<body>
	<section class="main">
		<div class="enrol-left">
			<a href="${basePath}/SSM/main"><img src="image/logo.png"></a>
			<div class="left-poster">左侧海报</div>
		</div>
		<div class="enrol-right">
			<h1>青春不常在，抓紧谈恋爱</h1>
			<span class="shoulder shoulder-l">注册页左肩</span>
			<span class="shoulder shoulder-r">注册页右肩</span>
			<p class="enrol-remind">花点时间填写真实信息，我们会让结果更合您的心意。</p>
			<form action="${basePath}/SSM/enrol" method="post" id="submitUser">
				<!-- <dl class="c">
					<dt>账号</dt>
					<dd>
						<input  type="text" name="userName" placeholder="邮箱/手机号"/>
					</dd>
				</dl> -->
				<dl class="c gender">
					<dt>我是一位</dt>
					<dd>
						<div role="1" class="label checked"></div>
						<label for="male" class="male">男士</label>
						<div role="2" class="label"></div>
						<label for="female" class="female">女士</label>
						<input type="hidden" name="gender"/>
					</dd>
				</dl>
				<dl class="c">
					<dt>我的生日</dt>
					<dd>
						<input type="text" id="datepicker" readonly="readonly" required="required"/>
						<span class="vali-msg vali-birthday">请选择生日</span>
					</dd>
				</dl>
				<input type="hidden" name="birthday"/>
				<dl class="c">
					<dt>常住地</dt>
					<dd>
						<input class="input" name="" id="city" type="text" placeholder="请选择" autocomplete="off" readonly="readonly"/>
						<input name="address" type="hidden"/>
						<span class="vali-msg vali-address">请选择常住地</span>
					</dd>
				</dl>
				<dl class="c marriage">
					<dt>婚姻状态</dt>
					<dd>
						<div role="1" class="label checked"></div>
						<label class="sex unmarried">未婚</label>
						<div role="2" class="label"></div>
						<label class="sex divorce">离异</label>
						<div role="3" class="label"></div>
						<label class="sex widowhood">丧偶</label>
						<input type="hidden" name="marriage"/>
					</dd>
				</dl>
				<dl class="c">
					<dt>身高</dt>
					<dd>
						<label id="amount">130cm</label>
						<input name="height" type="hidden"/>
						<div id="slider-range-min"></div>
					</dd>
				</dl>
				<dl class="c education">
					<dt>学历</dt>
					<dd>
						<input class="education" readonly="readonly" placeholder="请选择"/>
						<ul>
							<li>初中</li>
							<li>中专</li>
							<li>高中</li>
							<li>大专</li>
							<li>本科</li>
							<li>硕士</li>
							<li>博士</li>
						</ul>
						<input name="education" type="hidden"/>
						<span class="vali-msg vali-education">请选择学历</span>
					</dd>
				</dl>
				<dl class="c salary">
					<dt>月薪</dt>
					<dd>
						<input name="salary" readonly="readonly" placeholder="请选择"/>
						<ul>
							<li>3000元以下</li>
							<li>3001-5000元</li>
							<li>5001-8000元</li>
							<li>8001-12000元</li>
							<li>12001-20000元</li>
							<li>20001-50000元</li>
							<li>50000元以上</li>
						</ul>
						<span class="vali-msg vali-salary">请选择月薪</span>
					</dd>
				</dl>
				<div class="form-line">表单分隔线</div>
				<dl class="c">
					<dt>我的手机</dt>
					<dd>
						<input name="phone" value="" placeholder="请输入你的手机号"/>
						<span class="vali-msg vali-phone">请输入手机号</span>
					</dd>
				</dl>
				<dl class="c">
					<dt>创建密码</dt>
					<dd>
						<input name="userPwd" type="password" placeholder="请设置登录密码（6-20位）"/>
						<span class="vali-msg vali-password">请设置登录密码</span>
					</dd>
				</dl>
				<dl class="c">
					<dt>昵称</dt>
					<dd>
						<input name="nickName" value=""/>
						<span class="vali-msg vali-nickName">请填写昵称</span>
					</dd>
				</dl>
				<dl class="c">
					<dt>验证码</dt>
					<dd>
						<input class="verifyCode" placeholder="请输入校验码"/>
						<img id="codeImg" alt="验证码" src="${basePath}/SSM/verifyCode"/>
						<span class="vali-msg vali-verifyCode">验证码不正确</span>
					</dd>
				</dl>
				<p id="policy">
					<input type="checkbox" class="policy"/>
					<label for="policy" class="">
						我同意<a href="">注册条款</a>和<a href="">会员加入标准</a>
					</label>
				</p>		
				<a href="javascript:void(0)" class="submit-btn">免费注册</a>		
				<p class="promise">我承诺年满18岁、单身、抱着积极的态度，真诚交友</p>
			</form>
		</div>
	</section>
	<footer>
		<p>中文实名：风雪佳人 Copyright &copy; 2018 版权所有</p>
	</footer>
</body>
</html>