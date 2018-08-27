$(document).ready(function(){
	$(".home-nav").children().eq(1).css("backgroundColor","#0c8ed9");
	$(".rank-wrap li").on("click",function(){
		window.location.href=$(this).children("a").attr("href");
	});
	
	var side_bar_li=$(".side-bar li");
	side_bar_li.on("click",function(e){
		side_bar_li.each(function(i){
			if(this==e.currentTarget){
				$(this).children("a").addClass("current");
			}else{
				$(this).children("a").removeClass("current");
			}
		});
	});
});