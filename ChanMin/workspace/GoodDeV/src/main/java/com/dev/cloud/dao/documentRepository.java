package com.dev.cloud.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Document;
import com.dev.cloud.vo.ItemDo;
import com.dev.cloud.vo.PdpVo;


@Repository
public class documentRepository implements documentMapper {

	@Autowired
	SqlSession session;
	
	@Override
	public int insertDocument(ItemDo itemdo) {
		int result = 0;
		documentMapper mapper = session.getMapper(documentMapper.class);
		try {
			result = mapper.insertDocument(itemdo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public int updateDocument(ItemDo itemdo) {
		int result = 0;
		documentMapper mapper = session.getMapper(documentMapper.class);
		try {
			result = mapper.updateDocument(itemdo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int updateDocu(PdpVo pdp) {
		int result = 0;
		documentMapper mapper = session.getMapper(documentMapper.class);
		try {
			result = mapper.updateDocu(pdp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Document selectDocu(int DocumentNum) {
		documentMapper mapper = session.getMapper(documentMapper.class);
		Document result =null;
		try {
			result = mapper.selectDocu(DocumentNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
