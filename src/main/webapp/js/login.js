$(function(){
	$(this).on("keydown",function(event){
		if(event.keyCode==13){
			event.preventDefault();
			$(".submit").click();
		}
	});
	
	$(".submit").on("click",function(){
		var userName=$("#userName").val();
		var userPwd=$("#userPwd").val();
		$.ajax({
			type:"post",
			url:"/SSM/validateUser",
			data:"userName="+userName+"&userPwd="+userPwd,
			success:function(msg){
				if(msg=="true"){
					$("form").eq(0).submit();
				}else if(msg=="false"){
					$(".login-message").css("display","block");
				}
			}
		})
	})
})