$(function(){
	var more=$("#more");
	var second_menu=$(".second-menu");
	more.on("mouseover",function(){
		second_menu.css("display","block");
		more.children("a").css("backgroundImage","url(image/arrowMoreu.png)");
	}).on("mouseout",function(){
		second_menu.css("display","none");
		more.children("a").css("backgroundImage","url(image/arrowMored.png)");
	});
	second_menu.on("mouseover",function(){
		second_menu.css("display","block");
		more.children("a").css("backgroundImage","url(image/arrowMoreu.png)");
	}).on("mouseout",function(){
		second_menu.css("display","none");
		more.children("a").css("backgroundImage","url(image/arrowMored.png)");
	});
	
	var slider_prev=$(".slider-prev");
	var slider_next=$(".slider-next");
	$(".banner").on("mouseover",function(){
		slider_prev.css("display","block");
		slider_next.css("display","block");
	}).on("mouseout",function(){
		slider_prev.css("display","none");
		slider_next.css("display","none");
	})
	
	var user_menu=$(".user-menu");
	$(".login-area").on("mouseover",function(){
		user_menu.css("display","block");
	}).on("mouseout",function(){
		user_menu.css("display","none");
	})
	user_menu.on("mouseover",function(){
		user_menu.css("display","block");
	}).on("mouseout",function(){
		user_menu.css("display","none");
	})
})