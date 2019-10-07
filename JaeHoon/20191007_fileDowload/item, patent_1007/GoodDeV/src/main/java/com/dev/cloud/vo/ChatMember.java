package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
public class ChatMember {

	private int chatmember_seq;
	private int chatroom_seq;
	private String memberId;
	private String messageDate;
	private String message;
	public int getChatmember_seq() {
		return chatmember_seq;
	}
	public void setChatmember_seq(int chatmember_seq) {
		this.chatmember_seq = chatmember_seq;
	}
	public int getChatroom_seq() {
		return chatroom_seq;
	}
	public void setChatroom_seq(int chatroom_seq) {
		this.chatroom_seq = chatroom_seq;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMessageDate() {
		return messageDate;
	}
	public void setMessageDate(String messageDate) {
		this.messageDate = messageDate;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "ChatMember [chatmember_seq=" + chatmember_seq + ", chatroom_seq=" + chatroom_seq + ", memberId="
				+ memberId + ", messageDate=" + messageDate + ", message=" + message + "]";
	}
	
	
	
}


