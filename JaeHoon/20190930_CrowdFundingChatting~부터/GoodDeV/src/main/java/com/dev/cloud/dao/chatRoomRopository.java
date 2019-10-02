package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.ChatMember;
import com.dev.cloud.vo.ChatRoom;

@Repository
public class chatRoomRopository implements chatRoomMapper {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertChatRoom(ChatRoom chatRoom) {
		chatRoomMapper mapper=sqlSession.getMapper(chatRoomMapper.class);
		int result=0;
		try {
			result=mapper.insertChatRoom(chatRoom);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int sendMessage(ChatMember chatMember) {
		chatRoomMapper mapper=sqlSession.getMapper(chatRoomMapper.class);
		int result=0;
		try {
			result=mapper.sendMessage(chatMember);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<ChatMember> getAllchatMemberByCrowdfundingNum(ChatRoom chatRoom) {
		chatRoomMapper mapper=sqlSession.getMapper(chatRoomMapper.class);
		ArrayList<ChatMember> result=new ArrayList<>();
		try {
			result=mapper.getAllchatMemberByCrowdfundingNum(chatRoom);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<ChatRoom> getAllchatRoomByCrowdfundingNum(ChatRoom chatRoom) {
		chatRoomMapper mapper=sqlSession.getMapper(chatRoomMapper.class);
		ArrayList<ChatRoom> result=new ArrayList<>();
		try {
			result=mapper.getAllchatRoomByCrowdfundingNum(chatRoom);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}



}
