package com.dev.cloud.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dev.cloud.vo.Board;

@Repository
public class boardRepository {
	
	@Autowired
	private SqlSession sqlSession;

	public int getBoardCount(String searchItem, String searchWord) {
		// TODO Auto-generated method stub
		boardMapper mapper = sqlSession.getMapper(boardMapper.class);
		Map<String, Object> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		int total = mapper.getBoardCount(map);	
		return total;
	}

	public List<Board> selectAll(String searchItem, String searchWord, int startRecord, int countPerPage) {
		// TODO Auto-generated method stub
		List<Board> list;
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		boardMapper mapper = sqlSession.getMapper(boardMapper.class);

		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		list = mapper.selectAll(map, rb);
		
		System.out.println("조회된 데이터 개수 => " + list.size());
		return list;
	}

	public Board selectOne(int boardno) {
		boardMapper mapper = sqlSession.getMapper(boardMapper.class);
		Board board = mapper.selectOne(boardno);

		return board;
	}

	public int deleteBoard(int boardno) {
		// TODO Auto-generated method stub
		boardMapper mapper = sqlSession.getMapper(boardMapper.class);
		int result = mapper.deleteBoard(boardno);
		if (result ==1 ) {
			System.out.println("삭제완료");
		}
		return result;
	}

	public int insertBoard(Board board) {
		// TODO Auto-generated method stub
		System.out.println("board repo=>" + board);
		boardMapper mapper = sqlSession.getMapper(boardMapper.class);

		int result = mapper.insertBoard(board);
		return result;
	}
	public int updateBoard(int boardno) {
		System.out.println("board repo=>" + boardno+"번보드");
		boardMapper mapper = sqlSession.getMapper(boardMapper.class);
		int result = mapper.updateBoard(boardno);
		return result;
	}
}
