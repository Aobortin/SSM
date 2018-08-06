$(document).ready(function(){
  /* $(".btn1").click(function(){
    $("p").slideToggle();
  }); */
//  alert(1);
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
});