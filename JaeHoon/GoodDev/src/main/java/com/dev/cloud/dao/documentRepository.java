package com.dev.cloud.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Document;

@Repository
public class documentRepository implements documentMapper {

	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertDocument(Document document) {
		int result = 0;
		documentMapper mapper = sqlSession.getMapper(documentMapper.class);
		try {
			result = mapper.insertDocument(document);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public int updateDocument(Document document) {
		int result = 0;
		documentMapper mapper = sqlSession.getMapper(documentMapper.class);
		try {
			result = mapper.updateDocument(document);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;

	}
}
