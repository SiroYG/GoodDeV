package com.dev.cloud.dao;

import java.util.List;

import com.dev.cloud.vo.Reply;

public interface replyMapper {

	public int insertRep(Reply reply);
	
	public List<Reply> selectAll(int Boardnum);
	
	public int deleteReply(int Boardnum);
}
