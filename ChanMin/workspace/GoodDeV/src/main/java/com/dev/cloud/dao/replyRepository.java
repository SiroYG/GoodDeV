package com.dev.cloud.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dev.cloud.vo.Reply;

@Repository
public class replyRepository {

	@Autowired
	SqlSession session;
	
	public int insertreply(Reply reply) {
		int result = 0;
		replyMapper mapper = session.getMapper(replyMapper.class);
		try {
			result = mapper.insertRep(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public List<Reply> selectAll(int Boardnum) {
		replyMapper mapper = session.getMapper(replyMapper.class);
		try {
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.selectAll(Boardnum);
	}
	
	public int deleteReply(int Boardnum){
		replyMapper mapper = session.getMapper(replyMapper.class);
		try {
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.deleteReply(Boardnum);
	}
	

}
