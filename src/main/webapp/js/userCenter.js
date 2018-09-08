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
		$("textarea[name='articleContent']").val($("#myEditor").html());
		$("form[name='writeArticle']").submit();
	});
	$("#browse").on("click",function(){
		$("#fileinp").click();
	});
	
	$(".rank-wrap li").on("click",function(){
		window.location.href=$(this).children("a").attr("href");
	});
	
	$(".write-article").on("click",function(){
		$("#articleList").css("display","none");
		$("#writeArticle").css("display","block");
	});
	$(".return-list").on("click",function(){
		$("#writeArticle").css("display","none");
		$("#articleList").css("display","block");
	});
	
	var um = UM.getEditor('myEditor',{
    	initialContent:"请在此输入内容",
    	autoHeightEnabled:false,
    	toolbar:[
            'source | undo redo | bold italic underline strikethrough | superscript subscript | forecolor backcolor | removeformat |',
            'insertorderedlist insertunorderedlist | selectall cleardoc | fontfamily fontsize' ,
            '| justifyleft justifycenter justifyright|',
            'link unlink | emotion image video  | map'
        ]
    });
})