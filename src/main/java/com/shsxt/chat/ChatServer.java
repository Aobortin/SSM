package com.shsxt.chat;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.Vector;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.servlet.http.HttpSession;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.apache.log4j.Logger;

import com.shsxt.vo.User;

import net.sf.json.JSONObject;

@ServerEndpoint(value="/websocket",configurator=GetHttpSessionConfigurator.class)
public class ChatServer {
	private final static Logger log = Logger.getLogger(ChatServer.class);
	private static final Set<ChatServer> onlineUsers = new CopyOnWriteArraySet<ChatServer>();
    private User user;
    private Session session;
    private HttpSession httpSession;

	private static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private static Vector<Session> room = new Vector<Session>();
	
	/**
	 * 用户接入
	 * @param session 可选
	 */
	@OnOpen
	public void onOpen(Session session,EndpointConfig config){
		this.session = session;
        this.httpSession = (HttpSession) config.getUserProperties().get(HttpSession.class.getName());
        this.user=(User) httpSession.getAttribute("currentUser");
        onlineUsers.add(this);
//        String message = String.format("* %s %s", nickname, " from websocket 上线了...");
//        broadcast(message);
		room.addElement(session);
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
		String toUserName=(String) obj.get("to");
		//向JSON对象中添加发送时间
		obj.put("date", df.format(new Date()));
		for (Iterator<ChatServer> iterator = onlineUsers.iterator(); iterator.hasNext();) {
			ChatServer chatServer = (ChatServer) iterator.next();
			if(toUserName.equals(chatServer.user.getUserName())) {
				obj.put("isSelf", true);
				chatServer.session.getAsyncRemote().sendText(obj.toString());
			}
		}
		
		//遍历聊天室中的所有会话
//		for(Session se : room){
//			//设置消息是否为自己的
//			obj.put("isSelf", se.equals(session));
//			//发送消息给远程用户
//			se.getAsyncRemote().sendText(obj.toString());
//		}
	}
	
	/**
	 * 用户断开
	 * @param session
	 */
	@OnClose
	public void onClose(Session session){
		onlineUsers.remove(this);
        String message = String.format("* %s %s",user.getNickName(), " from websocket 已经离开...");
        broadcast(message);
		room.remove(session);
	}
	
	/**
	 * 用户连接异常
	 * @param t
	 */
	@OnError
	public void onError(Throwable t){
		log.error("错误: " + t.toString(), t);
	}
	
	 private static void broadcast(String msg) {
	        for (ChatServer client : onlineUsers) {
	            try {
	                synchronized (client) {
	                    client.session.getBasicRemote().sendText(msg);
	                }
	            } catch (IOException e) {
	                log.debug("错误: 消息发送失败!", e);
	                onlineUsers.remove(client);
	                try {
	                    client.session.close();
	                } catch (IOException e1) {
	                    // Ignore
	                }
	                String message = String.format("* %s %s",client.user.getNickName(), " from websocket 已经离开...");
	                broadcast(message);
	            }
	        }
	    }
}
