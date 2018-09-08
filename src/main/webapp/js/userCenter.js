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
	

//	var item = {
//			  toolbars: [
//		                    ['fullscreen', 'undo', 'redo', 'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat                     ', 'simpleupload', 'insertvideo', 'lineheight','inserttable','|', 'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify'],
//		                    ['formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist',                       'selectall', 'cleardoc', 'fontfamily','fontsize']
//		                ],
//		        autoHeightEnabled: true, //是否自动长高，默认true
//		        autoFloatEnabled: false, //是否保持toolbar的位置不动，默认true
//		        wordCount: true, //是否开启字数统计 默认true
//		        maximumWords: 100000, //允许的最大字符数 默认值：10000
//		        wordOverFlowMsg: "<span style='color:red'>超出范围了！！！！！！！！</span>", //超出字数限制提示
//		        elementPathEnabled: false, //是否启用元素路径
//		        padding: 0,
//		        saveInterval: 5000000, // 将其设置大点，模拟去掉自动保存功能
//		        allowDivTransToP: false
//		    };
//		   //传参生成实例
//	var ue = UE.getEditor('editor', item);
//	UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
//	UE.Editor.prototype.getActionUrl = function(action) {
//	    if (action == 'uploadimage' || action == 'uploadscrawl' || action == 'uploadvideo') {
//	        return '${basePath}/SSM/uploadFile';
//	    } else {
//	        return this._bkGetActionUrl.call(this, action);
//	    }
//	}
	var ue = UE.getEditor('editor');
})