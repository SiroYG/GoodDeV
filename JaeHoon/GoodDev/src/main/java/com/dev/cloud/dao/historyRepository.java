package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.History;

@Repository
public class historyRepository implements historyMapper{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertHistory(History history) {
		int result=0;
		historyMapper mapper=sqlSession.getMapper(historyMapper.class);
		try {
			result=mapper.insertHistory(history);
		} catch (Exception e) {
			e.printStackTrace();
			}
		
		return result;
	}

	@Override
	public ArrayList<History> selectAllHistory(History history) {
		ArrayList<History> result=null;
		historyMapper mapper=sqlSession.getMapper(historyMapper.class);
		try {
			result=mapper.selectAllHistory(history);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updateHistory(History history) {
		int result=0;
		historyMapper mapper=sqlSession.getMapper(historyMapper.class);
		try {
			result=mapper.updateHistory(history);
		} catch (Exception e) {
			e.printStackTrace();
			}
		
		return result;
	}
}
