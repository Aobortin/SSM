$(function(){
	$("ul.clearfix li").on("click",function(e){
		$("ul.clearfix li").each(function(){
			$(this).removeClass("selected");
		})
		$(event.currentTarget).addClass("selected");
	})
	$(".upload").on("click",function(){
		$("form[name='uploadPortrait']").submit();
	})
	$("#browse").on("click",function(){
		$("#fileinp").click();
	})
})