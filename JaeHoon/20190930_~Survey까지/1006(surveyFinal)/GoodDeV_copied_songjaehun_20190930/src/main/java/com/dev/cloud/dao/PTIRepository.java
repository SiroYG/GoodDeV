package com.dev.cloud.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.PTI;

@Repository
public class PTIRepository implements PTIMapper {


	@Autowired
	SqlSession sqlsession;
	
	@Override
	public int insertPTI(PTI pti) {
		int result=0;
		PTIMapper mapper=sqlsession.getMapper(PTIMapper.class);
		try {
			result=mapper.insertPTI(pti);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updatePTI(PTI pti) {
		int result=0;
		PTIMapper mapper=sqlsession.getMapper(PTIMapper.class);
		try {
			result=mapper.updatePTI(pti);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
