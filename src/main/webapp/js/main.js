var timeoutId=0;
var num=0;
$(document).ready(function(){
	$(".home-nav").children().eq(0).css("backgroundColor","#0c8ed9");
	$("#more").on("mouseover",function(){
		$(".second-menu").css("display","block");
		$("#more a").css("backgroundImage","url(image/arrowMoreu.png)");
	}).on("mouseout",function(){
		$(".second-menu").css("display","none");
		$("#more a").css("backgroundImage","url(image/arrowMored.png)");
	});
	$(".second-menu").on("mouseover",function(){
		$(".second-menu").css("display","block");
		$("#more a").css("backgroundImage","url(image/arrowMoreu.png)");
	}).on("mouseout",function(){
		$(".second-menu").css("display","none");
		$("#more a").css("backgroundImage","url(image/arrowMored.png)");
	});
	$(".banner").on("mouseover",function(){
		$(".slider-prev").css("display","block");
		$(".slider-next").css("display","block");
	}).on("mouseout",function(){
		$(".slider-prev").css("display","none");
		$(".slider-next").css("display","none");
	})
	
	$(".login-area").on("mouseover",function(){
		$(".user-menu").css("display","block");
	}).on("mouseout",function(){
		$(".user-menu").css("display","none");
	})
	$(".user-menu").on("mouseover",function(){
		$(".user-menu").css("display","block");
	}).on("mouseout",function(){
		$(".user-menu").css("display","none");
	})
//	在线聊天开启方式
//	$("img[alt]").on("click",function(){
//		var fromUserName =$("#currentUserName").val();
//		window.location.href="/SSM/chat?toUserName="+$(this).attr("alt")+"&fromUserName="+fromUserName;
//	})
	var slider_pics=$(".banner li");//轮播图
	var dots=$(".slider-pages li a");//定位点
	var left_arrow=$(".slider-prev");//左箭头
	var right_arrow=$(".slider-next");//右箭头
	start_slider(slider_pics,left_arrow,right_arrow,dots);
});

function start_slider(slider_pics,left_arrow,right_arrow,dots){
	//绑定翻页箭头
	left_arrow.on("click",function(e){
		clearTimeout(timeoutId);
		num=num-1;
		num=num<=-1?slider_pics.length-1:num;
		slider_pics.each(function(j){
			if(num==j){
				$(this).css("opacity","1");
			}else{
				$(this).css("opacity","0");
			}
		});
		dots.each(function(i){
			if(num==i){
				$(this).addClass("hover");
			}else{
				$(this).removeClass("hover");
			}
		});
		slider(slider_pics,dots);
	});
	right_arrow.on("click",function(e){
		clearTimeout(timeoutId);
		num=num+1;
		num=num>=slider_pics.length?0:num;
		slider_pics.each(function(j){
			if(num==j){
				$(this).css("opacity","1");
			}else{
				$(this).css("opacity","0");
			}
		});
		dots.each(function(i){
			if(num==i){
				$(this).addClass("hover");
			}else{
				$(this).removeClass("hover");
			}
		});
		slider(slider_pics,dots);
	});
	//绑定定位点
	dots.on("mouseover",function(e){
		clearTimeout(timeoutId);
		dots.each(function(i){
			if(e.currentTarget==this){
				num=i;
				$(this).addClass("hover");
			}else{
				$(this).removeClass("hover");
			}
		});
		slider_pics.each(function(j){
			if(num==j){
				$(this).css("opacity","1");
			}else{
				$(this).css("opacity","0");
			}
		});
	}).on("mouseout",function(){
		slider(slider_pics,dots);
	});
	//启动轮播
	slider(slider_pics,dots);
}
//轮播驱动
function slider(slider_pics,dots){
	timeoutId=setTimeout(function(){
		num=num+1;
		num=num>=slider_pics.length?0:num;
		slider_pics.each(function(j){
			if(num==j){
				$(this).css("opacity","1");
			}else{
				$(this).css("opacity","0");
			}
		});
		dots.each(function(i){
			if(num==i){
				$(this).addClass("hover");
			}else{
				$(this).removeClass("hover");
			}
		});
		slider(slider_pics,dots);
	},5000);
}