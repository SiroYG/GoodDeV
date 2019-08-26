package com.seschool.bank.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.seschool.bank.vo.Board;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSession sqlSession;

	public List<Board> selectAll(String searchItem, String searchWord, int startRecord, int countPerPage) {
		List<Board> list;	
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);

		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		list = mapper.selectAll(map, rb);
		
		System.out.println("조회된 데이터 개수 => " + list.size());
		return list;
	}

	public Board selectOne(int boardno) {
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		Board board = mapper.selectOne(boardno);
		return board;
	}


	public int getBoardCount(String searchItem, String searchWord) {
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		Map<String, Object> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		int total = mapper.getBoardCount(map);
		return total;
	}
}
