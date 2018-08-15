$(function(){
	$(".submit-btn").on("click",function(){
		var year=$("select[name=year]").val();
		var month=$("select[name=month]").val();
		var day=$("select[name=day]").val();
		$("input[name=birthday]").val(stringToDate(year+"-"+month+"-"+day));
//		var height=$("input[name=height]").val();
//		$("input[name=height]").val(height.replace("厘米",""));
		var education=$("input[name=education]").val();
		if(education=="初中"){
			$("input[name=education]").val(1);
		}else if(education=="高中"){
			$("input[name=education]").val(2);
		}else if(education=="本科"){
			$("input[name=education]").val(3);
		}else if(education=="硕士"){
			$("input[name=education]").val(4);
		}else if(education=="博士"){
			$("input[name=education]").val(5);
		}
		$("#submitUser").submit();
	})
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