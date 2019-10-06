package com.dev.cloud.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Patentsub;

@Repository
public class patentsubRepository implements patentsubMapper {

	@Autowired
	SqlSession sqlsession;
	
	@Override
	public int insertPatentsub(Patentsub patentsub) {
		int result=0;
		patentsubMapper mapper=sqlsession.getMapper(patentsubMapper.class);
		try {
			result=mapper.insertPatentsub(patentsub);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updatePatentsub(Patentsub patentsub) {
		int result=0;
		patentsubMapper mapper=sqlsession.getMapper(patentsubMapper.class);
		try {
			result=mapper.updatePatentsub(patentsub);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
