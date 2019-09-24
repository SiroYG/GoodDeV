package com.dev.cloud.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.ItemDo;
import com.dev.cloud.vo.Patentsub;

@Repository
public class PatentSubRepository implements patentsubMapper {

	@Autowired
	SqlSession session;
	
	@Override
	public int insertPatentsub(Patentsub patentsub) {
		int result=0;
		patentsubMapper mapper = session.getMapper(patentsubMapper.class);
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
		patentsubMapper mapper = session.getMapper(patentsubMapper.class);
		try {
			result=mapper.updatePatentsub(patentsub);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ItemDo selectPatSub(ItemDo itemdo) {
		ItemDo result = null;
		patentsubMapper mapper = session.getMapper(patentsubMapper.class);
		try {
			result=mapper.selectPatSub(itemdo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	

}
