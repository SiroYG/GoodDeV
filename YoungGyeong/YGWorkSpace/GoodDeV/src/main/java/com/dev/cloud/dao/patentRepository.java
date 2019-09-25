package com.dev.cloud.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dev.cloud.vo.Board;
import com.dev.cloud.vo.Patent;

@Repository
public class patentRepository {
	
	@Autowired
	private SqlSession sqlSession;

	public int getBoardCount(String searchItem, String searchWord) {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		Map<String, Object> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		int total = mapper.getBoardCount(map);	
		return total;
	}

	public List<Patent> selectAll(String searchItem, String searchWord, int startRecord, int countPerPage) {
		List<Patent> list;
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		list = mapper.selectAll(map, rb);
		System.out.println("조회된 데이터 개수 => " + list.size());
		return list;
	}
	
	public Patent selectOne(int patentNum) {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		Patent Patent = mapper.selectOne(patentNum);

		return Patent;
	}
}
