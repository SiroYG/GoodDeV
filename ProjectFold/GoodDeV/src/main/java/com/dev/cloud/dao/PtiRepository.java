package com.dev.cloud.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.ItemDo;

@Repository
public class PtiRepository implements PTIMapper {
	
	@Autowired
	SqlSession session;
	
	@Override
	public int insertPTI(ItemDo itemdo) {
		int result=0;
		PTIMapper mapper=session.getMapper(PTIMapper.class);
		try {
			result=mapper.insertPTI(itemdo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updatePTI(ItemDo itemdo) {
		int result=0;
		PTIMapper mapper=session.getMapper(PTIMapper.class);
		try {
			result=mapper.updatePTI(itemdo);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
