package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ChatTotal {

	private int  crowdfundingNum;
	private int chatmember_seq;
	private int chatroom_seq;
	private String memberId;
	private String messageDate;
	private String message;
}
