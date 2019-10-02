package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ChatMember {

	private int CHATMEMBER_seq;
	private int CHATROOM_seq;
	private String memberId;
	private String messageDate;
	private String message;
	
	
}


