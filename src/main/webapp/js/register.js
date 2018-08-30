$(function(){
//	生日
	$( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      showAnim:"blind",
      dateFormat:"yy-mm-dd",
      regional:"zh-CN"
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
      $( "#amount" ).html($( "#slider-range-min" ).slider( "value" )+"cm");
    
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
	
	$(".submit-btn").on("click",function(){
		$("input[name=birthday]").val(stringToDate($("#datepicker").val()));
		$("input[name=address]").val($("#city").val());
		$("input[name=height]").val($("#amount").text().replace("cm",""));
		var education=$("input[name=education]").val();
		$("input[name=gender]").val($(".gender .checked").attr("role"));
		$("input[name=marriage]").val($(".marriage .checked").attr("role"));
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
		
		$("#submitUser").submit();
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