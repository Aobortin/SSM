<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>	
<html>
<head>
	<title>${lover.nickName}资料照片</title>
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
	<link rel="stylesheet" type="text/css" href="css/loverDetail.css"/>
	<script type="text/javascript" src="js/loverDetail.js"></script>
</head>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<div class="content">
		<section class="brief-info clearfix">
			<div class="photo-album">
				<div class="album-play">
					<div class="album-display-img">
						<img alt="" src="image/avatar/${lover.userName}.jpeg"/>
					</div>
				</div>
				<div class="album-thumbs">
					<ul>
						<li class="current">
							<img alt="" src="image/avatar/zhangsan.jpeg"/>
						</li>
						<li>
							<img alt="" src="image/avatar/lisi.jpeg"/>
						</li>
						<li>
							<img alt="" src="image/avatar/wangwu.jpeg"/>
						</li>
						<li>
							<img alt="" src="image/avatar/zhaoliu.jpeg"/>
						</li>
					</ul>
					<a href="javascript:void(0)" class="small-arr arr-l"></a>
					<a href="javascript:void(0)" class="small-arr arr-r"></a>
				</div>
			</div>
			<div class="introduction">
				<div class="brief-name">
					<h2>${lover.nickName}</h2>
					<span>ID:${lover.id}</span><span>诚信值:10</span>
					<a href="javascript:void(0)">查看最后登录时间</a>
				</div>
				<div class="brief-resume">
					<p>
						<span>年龄: 23</span>
						<span>身高: ${lover.height}CM</span>
						<span>月收入: ${lover.salary}</span>
					</p>
					<p>
						<span>
							婚况:
							<c:if test="${lover.marriage==1 }">未婚</c:if>
							<c:if test="${lover.marriage==2 }">离异</c:if>
							<c:if test="${lover.marriage==3 }">丧偶</c:if>
						</span>
						<span>
							学历:
							<c:if test="${lover.education==1 }">高中</c:if>
							<c:if test="${lover.education==2 }">本科</c:if>
							<c:if test="${lover.education==3 }">硕士</c:if>
							<c:if test="${lover.education==4 }">博士</c:if>
						</span>
						<span>工作地: 浙江杭州</span>
					</p>
					<p>
						<span>职业: 其他职业</span>
						<span>星座: 天秤座</span>
						<span>籍贯: 江西上饶</span>
					</p>
				</div>
				<div class="breif-group">
					<ul class="contact clearfix">
						<li><a href="javascript:void(0)">发邮件</a></li>
						<li><a href="javascript:void(0)">打招呼</a></li>
						<li><a href="javascript:void(0)">问问题</a></li>
						<!-- <li><a href="javascript:void(0)">委托红娘</a></li> -->
					</ul>
					<ul class="interact clearfix">
						<li><a href="javascript:void(0)">关注</a></li>
						<li><a href="javascript:void(0)">送礼物</a></li>
						<li><a href="javascript:void(0)">在线聊天</a></li>
						<li><a href="javascript:void(0)">情敌动态</a></li>
						<li><a href="javascript:void(0)">举报拉黑</a></li>
					</ul>
				</div>
			</div>
		</section>
		<section class="mood clearfix">
			<div class="inner-desc">
				<ul class="clearfix">
					<li class="selected"><a href="javascript:void(0)">内心独白</a></li>
					<li><a href="javascript:void(0)">自我描述</a></li>
				</ul>
				<div class="desc-content">
					<div>Ta有点害羞,需要你的鼓励,来邀请TA填写内心独白吧</div>
					<div class="hide">想要听听TA对自己的想法？来邀请TA补充自我描述吧</div>
				</div>
				<div class="detail-data xxzl clearfix">
					<div class="data-photo fl">
						<dl>
							<dt>详细资料logo图</dt>
							<dd>详细资料</dd>
						</dl>
					</div>
					<div class="data-content fr">
						<p><span>性别: 女</span><span>生肖: 狗</span></p>
						<p><span>身高：155CM</span><span>	星座：天秤座</span></p>
						<p><span>体重：46KG</span><span>	血型：--</span></p>
						<p><span>体型：苗条</span><span>职业：其他职业</span></p>
						<p><span>民族：汉族</span><span>公司：--</span></p>
						<p><span>信仰：--</span></p>
					</div>
				</div>
				<div class="detail-data shzk clearfix">
					<div class="data-photo fl">
						<dl>
							<dt>生活状况logo图</dt>
							<dd>生活状况</dd>
						</dl>
					</div>
					<div class="data-content fr">
						<p><span>住房条件：租房</span><span>想何时结婚：时机成熟就结婚</span></p>
						<p><span>是否购车：未购车</span><span>婚后与父母住吗：--</span></p>
						<p><span>是否吸烟：不吸烟</span><span>与对方父母同住：--</span></p>
						<p><span>是否喝酒：不喝酒</span><span>较大的消费：--</span></p>
						<p><span>厨艺：--</span><span>喜欢怎样的约会：--</span></p>
						<p><span>家务：--</span></p>
					</div>
				</div>
				<div class="detail-data xqah clearfix">
					<div class="data-photo fl">
						<dl>
							<dt>兴趣爱好logo图</dt>
							<dd>兴趣爱好</dd>
						</dl>
					</div>
					<div class="data-content fr">
						<p><span>喜欢的活动：--</span><span>喜欢的食物：--</span></p>
						<p><span>喜欢的体育运动：--</span><span>喜欢的地方：--</span></p>
						<p><span>喜欢的音乐：--</span><span>	喜欢的宠物：--</span></p>
						<p><span>喜欢的影视节目：--</span></p>
					</div>
				</div>
				<div class="detail-data zotj clearfix">
					<div class="data-photo fl">
						<dl>
							<dt>择偶条件logo图</dt>
							<dd>择偶条件</dd>
						</dl>
					</div>
					<div class="data-content fr">
						<p><span>性别：男</span><span>体型：不限</span></p>
						<p><span>年龄：18 - 32岁</span><span>	职业：不限</span></p>
						<p><span>身高：175 - 175厘米</span><span>是否抽烟：不限</span></p>
						<p><span>学历：不限</span><span>是否喝酒：不限</span></p>
						<p><span>月收入：5000元以上</span><span>有没有孩子：不限</span></p>
						<p><span>婚况： 未婚</span><span>是否想要孩子：不限</span></p>
						<p><span>工作地区：不限</span><span>是否有照片：不限</span></p>
					</div>
				</div>
				<div class="complete-data">
					<a href="javascript:void(0);">TA的资料完整度只有40%，邀请完善资料</a>
				</div>
			</div>
		</section>
	</div>
<jsp:include page="../include/foot.jsp"></jsp:include>
</body>
</html>