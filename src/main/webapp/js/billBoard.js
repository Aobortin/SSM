$(document).ready(function(){
	$(".home-nav").children().eq(1).css("backgroundColor","#0c8ed9");
	$(".rank-wrap li").on("click",function(){
		window.location.href=$(this).children("a").attr("href");
	})
});