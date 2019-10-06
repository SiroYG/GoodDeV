package com.dev.cloud.dao;

import java.util.List;

import com.dev.cloud.vo.Chat;

public interface chatMapper {

	public int insert(Chat Chat);
	public List<Chat> selectAll (Chat Chat);
	
	
}
