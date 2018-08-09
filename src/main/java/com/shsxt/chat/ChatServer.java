package com.shsxt.chat;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.apache.log4j.Logger;

import com.shsxt.service.UserService;

import net.sf.json.JSONObject;

@ServerEndpoint(value="/websocket/{fromUserName}",configurator=GetHttpSessionConfigurator.class)
public class ChatServer {
	@Resource
    private UserService userService;
	private final static Logger log = Logger.getLogger(ChatServer.class);
	private static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private static final Map<String,Session> userSession=new HashMap<String,Session>();
	/**
	 * 用户接入
	 * @param session 可选
	 */
	@OnOpen
	public void onOpen(@PathParam("fromUserName") String fromUserName,Session session){
        userSession.put(fromUserName, session);
//        String message = String.format("* %s %s", nickname, " from websocket 上线了...");
//        broadcast(message);
	}
	
	/**
	 * 接收到来自用户的消息
	 * @param message
	 * @param session
	 */
	@OnMessage
	public void onMessage(String message,Session session){
		//把用户发来的消息解析为JSON对象
		JSONObject obj = JSONObject.fromObject(message);
		String fromUserName=(String) obj.get("from");
		String fromNickName=(String) obj.get("from_nick");
		String toUserName=(String) obj.get("to");
		
		for (Iterator<String> iterator = userSession.keySet().iterator(); iterator.hasNext();) {
			obj.put("from", fromNickName);
			//向JSON对象中添加发送时间
			obj.put("date", df.format(new Date()));
			String userName = iterator.next();
			if(toUserName.equals(userName)) {
				obj.put("isSelf", false);
				userSession.get(userName).getAsyncRemote().sendText(obj.toString());
			}else if(fromUserName.equals(userName)) {
				obj.put("isSelf", true);
				userSession.get(userName).getAsyncRemote().sendText(obj.toString());
			}
		}
	}
	
	/**
	 * 用户断开
	 * @param session
	 */
	@OnClose
	public void onClose(Session session){
		for (Iterator<String> iterator = userSession.keySet().iterator(); iterator.hasNext();) {
			String userName = iterator.next();
			if(userSession.get(userName).equals(session)) {
				userSession.remove(userName);
			}
		}
	}
	
	/**
	 * 用户连接异常
	 * @param t
	 */
	@OnError
	public void onError(Throwable t){
		log.error("错误: " + t.toString(), t);
	}
	
//	 private static void broadcast(String msg) {
//	        for (ChatServer client : onlineUsers) {
//	            try {
//	                synchronized (client) {
//	                    client.session.getBasicRemote().sendText(msg);
//	                }
//	            } catch (IOException e) {
//	                log.debug("错误: 消息发送失败!", e);
//	                onlineUsers.remove(client);
//	                try {
//	                    client.session.close();
//	                } catch (IOException e1) {
//	                    // Ignore
//	                }
//	                String message = String.format("* %s %s",client.user.getNickName(), " from websocket 已经离开...");
//	                broadcast(msg);
//	            }
//	        }
//	    }
}
