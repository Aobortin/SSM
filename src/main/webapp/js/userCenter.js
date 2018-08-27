$(function(){
	$(".module-name li").on("click",function(e){
		$("ul.clearfix li").each(function(i){
			if(this==e.currentTarget){
				$(".module-body").eq(i).removeClass("hide");
				$(this).addClass("selected");
			}else{
				$(".module-body").eq(i).addClass("hide");
				$(this).removeClass("selected");
			}
		});
	});
	$(".upload").on("click",function(){
		$("form[name='uploadPortrait']").submit();
	});
	$(".submit").on("click",function(){
		$("form[name='writeArticle']").submit();
	});
	$("#browse").on("click",function(){
		$("#fileinp").click();
	});
})