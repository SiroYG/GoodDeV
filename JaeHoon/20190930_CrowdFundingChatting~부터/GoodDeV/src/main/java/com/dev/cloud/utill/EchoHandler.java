package com.dev.cloud.utill;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class EchoHandler extends TextWebSocketHandler {

	private List<WebSocketSession> sessionList=new ArrayList<WebSocketSession>();
	
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessionList.add(session);
		
		log.info( session.getId()+"연결됨");
		
		System.out.println("채팅방 입장자 : "+session.getPrincipal().getName());
		//super.afterConnectionEstablished(session);
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		log.info(session.getId() +"로 부터" +message.getPayload());
		
		for(WebSocketSession sess : sessionList){
			sess.sendMessage(new TextMessage(session.getPrincipal().getName()+"l"));
		}
		
		super.handleTextMessage(session, message);
	}
}
