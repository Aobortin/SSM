$(function(){
	$(".album-thumbs ul li").on("click",function(e){
		$(".album-thumbs ul li").each(function(){
			$(this).removeClass("current");
		});
		$(e.currentTarget).addClass("current");
		$(".album-display-img").children("img").attr("src",$(this).children("img").attr("src"));
	})
	$(".arr-l").on("click",function(){
		var num=0;
		$(".album-thumbs ul li").each(function(i){
			if($(this).children("img").attr("src")==$(".album-display-img").children("img").attr("src")){
				$(this).removeClass("current");
				num=i-1;
				num=num==4?0:num;
				num=num==-1?3:num;
			}
		});
		$(".album-display-img").children("img").attr("src",$(".album-thumbs ul li").eq(num).children("img").attr("src"));
		$(".album-thumbs ul li").eq(num).addClass("current");
	})
	$(".arr-r").on("click",function(){
		var num=0;
		$(".album-thumbs ul li").each(function(i){
			if($(this).children("img").attr("src")==$(".album-display-img").children("img").attr("src")){
				$(this).removeClass("current");
				num=i+1;
				num=num==4?0:num;
				num=num==-1?3:num;
			}
		});
		$(".album-display-img").children("img").attr("src",$(".album-thumbs ul li").eq(num).children("img").attr("src"));
		$(".album-thumbs ul li").eq(num).addClass("current");
	})
	$(".mood .inner-desc li").on("click",function(e){
		var num=0;
		$(".mood .inner-desc li").each(function(i){
			if(this==e.currentTarget){
				num=i;
			}
			$(this).removeClass("selected");
		});
		$(e.currentTarget).addClass("selected");
		$(".desc-content div").each(function(i){
			if(num!=i){
				$(this).addClass("hide");
			}else{
				$(this).removeClass("hide");
			}
		});
	})
})