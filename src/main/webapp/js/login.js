$(function(){
	var userName=$("#userName");
	var userPwd=$("#userPwd");
	var vali_userName=$(".vali-userName");
	var vali_userPwd=$(".vali-userPwd");
	var vali_login=$(".vali-login");
	$(this).on("keydown",function(event){
		if(event.keyCode==13){
			event.preventDefault();
			$(".submit").click();
		}
	});
	userName.on("focus",function(){
		vali_userName.css("display","none");
	}).on("blur",function(){
		if(validateInput(userName)){
			vali_userName.css("display","block");
		}
	});
	userPwd.on("focus",function(){
		vali_userPwd.css("display","none");
	}).on("blur",function(){
		if(validateInput(userPwd)){
			vali_userPwd.css("display","block");
		}
	});
	$(".submit").on("click",function(){
		var res=validateInput(userName,userPwd);
		if(res){
			$(".vali-"+res.attr("id")).css("display","block");
		}else{
			$.ajax({
				type:"post",
				url:"/SSM/validateUser",
				data:"userName="+userName.val()+"&userPwd="+userPwd.val(),
				success:function(msg){
					if(msg=="true"){
						$("form").eq(0).submit();
					}else if(msg=="false"){
						vali_login.css("display","block");
					}
				}
			});
		}
	});
});

function validateInput(){
	for (var i = 0; i < arguments.length; i++) {
		if (arguments[i].val().replace(/(^s*)|(s*$)/g, "").length==0){
			return arguments[i];
		}
	}
}