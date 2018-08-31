$(function(){
//	生日
	$( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      showAnim:"blind",
      dateFormat:"yy-mm-dd",
      regional:"zh-CN",
      minDate: "-79y +0D", 
      maxDate: "-18y +0D"
    });
    $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
	
//	住址
    $("#city").click(function (e) {
    	SelCity(this,e);
    });
    $("s").click(function (e) {
    	SelCity(document.getElementById("city"),e);
    });

//	身高    
    $( "#slider-range-min" ).slider({
        range: "min",
        value: 37,
        min: 130,
        max: 210,
        slide: function(event,ui) {
          $( "#amount" ).html( ui.value +"cm");
//          $( "#amount" ).css("left","130px");
          $("input[name=height]").val(ui.value);
        }
      });
//      $( "#amount" ).html($( "#slider-range-min" ).slider( "value" )+"cm");
    
	$(".gender .label").on("click",function(e){
		$(".gender .label").each(function(i){
			if(this==e.currentTarget){
				$(this).addClass("checked");
			}else{
				$(this).removeClass("checked");
			}
		});
	});
	
	$(".marriage .label").on("click",function(e){
		$(".marriage .label").each(function(i){
			if(this==e.currentTarget){
				$(this).addClass("checked");
			}else{
				$(this).removeClass("checked");
			}
		});
	});
//	学历
	$(".education input").on("mouseover",function(){
		$(".education ul").css("display","block");
	}).on("mouseout",function(){
		$(".education ul").css("display","none");
	});
	$(".education ul").on("mouseover",function(){
		$(".education ul").css("display","block");
	}).on("mouseout",function(){
		$(".education ul").css("display","none");
	});
	$(".education li").on("click",function(e){
		$(".education input").val($(e.currentTarget).text());
		$(".education ul").css("display","none");
	});

//月薪
	$(".salary input").on("mouseover",function(){
		$(".salary ul").css("display","block");
	}).on("mouseout",function(){
		$(".salary ul").css("display","none");
	});
	$(".salary ul").on("mouseover",function(){
		$(".salary ul").css("display","block");
	}).on("mouseout",function(){
		$(".salary ul").css("display","none");
	});
	$(".salary li").on("click",function(e){
		$(".salary input").val($(e.currentTarget).text());
		$(".salary ul").css("display","none");
	});
	
	$("#codeImg").on("click",function () {
	    var imgSrc = $("#codeImg");
	    var src = imgSrc.attr("src");
	    imgSrc.attr("src", chgUrl(src));
	} );
//	验证码
	$("input.verifyCode").on("focus",function(){
		$("#codeImg").css("display","block");
	});
//	表单提交
	$(".submit-btn").on("click",function(){
		var birthday=$("input[name=birthday]");
		var address=$("input[name=address]");
		var height=$("input[name=height]");
		var gender=$("input[name=gender]");
		var marriage=$("input[name=marriage]");
		if(validateEmpty($("#datepicker"))){
			$(".vali-birthday").css("display","block");
			return false;
		}else{
			birthday.val(stringToDate($("#datepicker").val()));
		}
		address.val($("#city").val());
		height.val($("#amount").text().replace("cm",""));
		gender.val($(".gender .checked").attr("role"));
		marriage.val($(".marriage .checked").attr("role"));
		var education=$("input[name=education]").val();
		switch(education){
		case "初中":
			$("input[name=education]").val(1);
		case "中专":
			$("input[name=education]").val(2);
		case "高中":
			$("input[name=education]").val(3);
		case "大专":
			$("input[name=education]").val(4);
		case "本科":
			$("input[name=education]").val(5);
		case "硕士":
			$("input[name=education]").val(6);
		case "博士":
			$("input[name=education]").val(7);
		}
		var verifyCode="";
		$.ajax({
			type:"post",
			url:"/SSM/getVerifyCode",
			data:"",
			success:function(msg){
				verifyCode=msg;
			}
		});
//		var res=validateEmpty(birthday,address,education,gender,marriage);
//		if(res){
//			$(".vali-"+res.attr("name")).css("display","block");
//		}else{
			if($(".verifyCode").val()==""){
				$(".vali-verifyCode").text("请填写验证码");
				$(".vali-verifyCode").css("display","block");
			}else if($(".verifyCode").val()!=verifyCode){
				$(".vali-verifyCode").text("验证码不正确");
				$(".vali-verifyCode").css("display","block");
			}else{
				$("#submitUser").submit();
			}
//		}
	});
})

function stringToDate(dateStr,separator){
     if(!separator){
            separator="-";
     }
     var dateArr = dateStr.split(separator);
     var year = parseInt(dateArr[0]);
     var month;
     //处理月份为04这样的情况                         
     if(dateArr[1].indexOf("0") == 0){
         month = parseInt(dateArr[1].substring(1));
     }else{
          month = parseInt(dateArr[1]);
     }
     var day = parseInt(dateArr[2]);
     var date = new Date(year,month -1,day);
     return date;
 }

//加入时间戳，去缓存机制   
function chgUrl(url) {
    var timestamp = (new Date()).valueOf();if ((url.indexOf("&") >= 0)) {
        url = url + "&timestamp=" + timestamp;
    } else {
        url = url + "?timestamp=" + timestamp;
    }
    return url;
}
//非空校验
function validateEmpty(){
	for (var i = 0; i < arguments.length; i++) {
		if (arguments[i].val().replace(/(^s*)|(s*$)/g, "").length==0){
			return arguments[i];
		}
	}
}