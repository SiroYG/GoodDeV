package com.dev.cloud.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.ItemDo;
import com.dev.cloud.vo.PTI;
import com.dev.cloud.vo.PdpVo;

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
	public int updatePTI(PdpVo pdp) {
		int result=0;
		PTIMapper mapper=session.getMapper(PTIMapper.class);
		try {
			result=mapper.updatePTI(pdp);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public PTI selectPti(int PTI_seq) {
		PTI result= null;
		PTIMapper mapper=session.getMapper(PTIMapper.class);
		try {
			result=mapper.selectPti(PTI_seq);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public PTI ptiNums(PTI pti) {
		PTI result= null;
		PTIMapper mapper=session.getMapper(PTIMapper.class);
		try {
			result=mapper.ptiNums(pti);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
