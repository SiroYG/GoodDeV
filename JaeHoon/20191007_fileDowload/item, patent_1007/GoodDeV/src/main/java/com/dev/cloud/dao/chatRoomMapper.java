package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.ChatMember;
import com.dev.cloud.vo.ChatRoom;

public interface chatRoomMapper {
	//채팅방생성시
	public int insertChatRoom(ChatRoom chatRoom);
	
	//메세지 입력시
	public int sendMessage(ChatMember chatMember);
	
	//fundingNum으로 fundingNum에 해당하는 모든 값을 가져온다.(전체화면시 전체 채팅 미리보기)
	public ArrayList<ChatMember> getAllchatMemberByCrowdfundingNum(ChatRoom chatRoom);
	
	//fundingNum으로 roomNum의 주소값을 가져오기 위함.
	public ArrayList<ChatRoom> getAllchatRoomByCrowdfundingNum(ChatRoom chatRoom);
	
	public ArrayList<ChatMember> getAllchatMemberByCrowdfundingNumNotDesc(ChatRoom chatRoom);

	public ArrayList<ChatMember> getAllchatByChatRM(ChatMember chatMember);
	
	public int getLastChatroom_seq();
}
