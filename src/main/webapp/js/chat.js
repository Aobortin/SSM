$(function(){
	//实例化编辑器
    var um = UM.getEditor('myEditor',{
    	initialContent:"请输入聊天信息...",
    	autoHeightEnabled:false,
    	toolbar:[
            'source | undo redo | bold italic underline strikethrough | superscript subscript | forecolor backcolor | removeformat |',
            'insertorderedlist insertunorderedlist | selectall cleardoc paragraph | fontfamily fontsize' ,
            '| justifyleft justifycenter justifyright justifyjustify |',
            'link unlink | emotion image video  | map'
        ]
    });
    $("#myEditor").on("focus",function(){
    	if($("#myEditor").html()=="<p>请输入聊天信息...</p>")
    	$("#myEditor").html("");
    }).on("blur",function(){
    	if($("#myEditor").html()=="")
    	$("#myEditor").html("<p>请输入聊天信息...</p>");
    })
    var userName = $("#userName").val();
    var nickname = $("#nickName").val();
    var toUserName = $("#toUserName").val();
	var socket = new WebSocket("ws://localhost:8080/SSM/websocket");
   
	//接收服务器的消息
    socket.onmessage=function(ev){
    	var obj = eval(   '('+ev.data+')'   );
    	addMessage(obj);
    }
    
    $("#send").on("click",function(){
    	if (!um.hasContents()) {  // 判断消息输入框是否为空
            // 消息输入框获取焦点
            um.focus();
            // 添加抖动效果
            $('.edui-container').addClass('am-animation-shake');
            setTimeout("$('.edui-container').removeClass('am-animation-shake')", 1000);
        } else {
        	//获取输入框的内容
        	var txt = um.getContent();
        	//构建一个标准格式的JSON对象
        	var obj = JSON.stringify({
	    		nickname:nickname,
	    		from:userName,
	    		to:toUserName,
	    		content:txt
	    	});
            // 发送消息
            socket.send(obj);
            // 清空消息输入框
            um.setContent('');
            // 消息输入框获取焦点
            um.focus();
        }
    });
    
	$(this).on("keydown",function(event){
		if (event.shiftKey && event.which == 13){
			//这里实现编辑换行效果
		}else if(event.keyCode==13){
			event.preventDefault();
			$("#send").click();
		}
	})
});

//人名nickname，时间date，是否自己isSelf，内容content
function addMessage(msg){
	var box = $("#msgtmp").clone(); 	//复制一份模板，取名为box
	box.show();							//设置box状态为显示
	box.appendTo("#chatContent");		//把box追加到聊天面板中
	box.find('[ff="nickname"]').html(msg.nickname); //在box中设置昵称
	box.find('[ff="msgdate"]').html(msg.date); 		//在box中设置时间
	box.find('[ff="content"]').html(msg.content); 	//在box中设置内容
	box.addClass(msg.isSelf? 'am-comment-flip':'');	//右侧显示
	box.addClass(msg.isSelf? 'am-comment-warning':'am-comment-success');//颜色
	box.css((msg.isSelf? 'margin-left':'margin-right'),"20%");//外边距
	$("#ChatBox div:eq(0)").scrollTop(999999); 	//滚动条移动至最底部
}