package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Reply;

@Repository
public class replyRepository implements replyMapper {

	@Autowired
	SqlSession sqlSession;
	
	
	
	public int insert_reply(Reply reply) {
		replyMapper mapper=sqlSession.getMapper(replyMapper.class);
		int result=0;
		try {
			result=mapper.insert_reply(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return result;
	}

	@Override
	public int update_reply(Reply reply) {

		replyMapper mapper=sqlSession.getMapper(replyMapper.class);
		int result=0;
		try {
			result=mapper.insert_reply(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return result;
	}

	@Override
	public Reply selectOne_reply(Reply reply) {

		replyMapper mapper=sqlSession.getMapper(replyMapper.class);
		Reply result=null;
		try {
			result=mapper.selectOne_reply(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<Reply> selectAll_reply(int boardNum) {
		replyMapper mapper=sqlSession.getMapper(replyMapper.class);
		ArrayList<Reply> result=new ArrayList<>();
		try {
			result=mapper.selectAll_reply(boardNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		return result;
	}

	
	@Override
	public int delete_reply(Reply reply) {
		replyMapper mapper=sqlSession.getMapper(replyMapper.class);
		int result=0;
		try {
			result=mapper.delete_reply(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
