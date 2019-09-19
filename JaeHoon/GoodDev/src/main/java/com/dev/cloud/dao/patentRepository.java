package com.dev.cloud.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Patent;

@Repository
public class patentRepository implements patentMapper {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertPatent(Patent patent) {
		int result=0;
		patentMapper mapper=sqlSession.getMapper(patentMapper.class);
		try {
			result=	mapper.insertPatent(patent);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	
	@Override
	public int updatePatent(Patent patent) {
		int result=0;
		patentMapper mapper=sqlSession.getMapper(patentMapper.class);
		
		try {
			result=mapper.updatePatent(patent);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
