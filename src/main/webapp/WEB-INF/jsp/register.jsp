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
</head>
<body>
	<section class="main">
		<div class="enrol-left">
			<a href="${basePath}/SSM/main"><img src="image/logo.png"></a>
			<div class="left-poster">左侧海报</div>
		</div>
		<div class="enrol-right">
			<h1>青春不常在，抓紧谈恋爱</h1>
			<span class="shoulder-l">注册页左肩</span>
			<span class="shoulder-r">注册页右肩</span>
			<p class="enrol-remind">花点时间填写真实信息，我们会让结果更合您的心意。</p>
			<form action="${basePath}/SSM/enrol" method="post" id="submitUser">
				<dl class="c">
					<dt>账号</dt>
					<dd>
						<input  type="text" name="userName" placeholder="邮箱/手机号"/>
					</dd>
				</dl>
				<dl class="c">
					<dt>我是</dt>
					<dd>
						<input id="male" type="radio" value="1" name="sex"/>
						<label for="male" class="sex male">男</label>
						<input id="female" type="radio" value="2" name="sex"/>
						<label for="female" class="sex female">女</label>
					</dd>
					<dd class="er">*注册修改需联系客服</dd>
				</dl>
				<dl class="c">
					<dt>生日</dt>
					<dd>
						<select name="year">
						  <option value ="1991">1991</option>
						  <option value ="1992">1992</option>
						  <option value="1993">1993</option>
						  <option value="1994">1994</option>
						</select>
						<select name="month">
						  <option value ="01">01</option>
						  <option value ="02">02</option>
						  <option value="03">03</option>
						  <option value="04">04</option>
						</select>
						<select name="day">
						  <option value ="01">01</option>
						  <option value ="02">02</option>
						  <option value="03">03</option>
						  <option value="04">04</option>
						</select>
					</dd>
				</dl>
				<input type="hidden" name="birthday"/>
				<dl class="c">
					<dt>常住地</dt>
					<dd>
						<input name="address" value="浙江杭州"/>
					</dd>
				</dl>
				<dl class="c">
					<dt>婚姻状况</dt>
					<dd>
						<input id="unmarried" type="radio" value="1" name="marriage"/>
						<label for="unmarried" class="sex unmarried">未婚</label>
						<input id="divorce" type="radio" value="2" name="marriage"/>
						<label for="divorce" class="sex divorce">离异</label>
						<input id="widowhood" type="radio" value="3" name="marriage"/>
						<label for="widowhood" class="sex widowhood">丧偶</label>
					</dd>
					<dd class="er">*注册修改需联系客服</dd>
				</dl>
				<dl class="c">
					<dt>身高</dt>
					<dd>
						<input name="height" value="180厘米"/>
					</dd>
				</dl>
				<dl class="c">
					<dt>学历</dt>
					<dd>
						<input name="education" value="本科"/>
					</dd>
				</dl>
				<dl class="c">
					<dt>月薪</dt>
					<dd>
						<input name="salary" value="5000"/>
					</dd>
				</dl>
				<div class="form-line">表单分隔线</div>
				<dl class="c">
					<dt>手机号</dt>
					<dd>
						<input name="phone" value=""/>
					</dd>
				</dl>
				<dl class="c">
					<dt>验证码</dt>
					<dd>
						<input name="remark1" value=""/>
					</dd>
				</dl>
				<dl class="c">
					<dt>创建密码</dt>
					<dd>
						<input name="userPwd" value=""/>
					</dd>
				</dl>
				<dl class="c">
					<dt>昵称</dt>
					<dd>
						<input name="nickName" value=""/>
					</dd>
				</dl>
				<dl class="c intro">
					<dt>自我介绍</dt>
					<dd>
						<textarea rows="10" cols="30" name="introduce">
						
						</textarea>
					</dd>
				</dl>
				<a href="javascript:void(0)" class="submit-btn">免费注册</a>		
				<p>
					<input type="checkbox" id="policy" class="policy"/>
					<label for="policy" class="">
						我同意<a href="">注册条款</a>和<a href="">会员加入标准</a>
					</label>
				</p>		
				<p class="promise">我承诺年满18岁、单身、抱着积极的态度，真诚交友</p>
			</form>
		</div>
	</section>
	<footer>
		<p>中文实名：风雪佳人 Copyright &copy; 2018 版权所有</p>
	</footer>
</body>
</html>