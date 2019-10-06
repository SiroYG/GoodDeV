package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Board;

@Repository
public class boardRepository implements boardMapper {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertBoard(Board board) {
		int result=0;
		boardMapper mapper=sqlSession.getMapper(boardMapper.class);
		try {
			result=mapper.insertBoard(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int updateBoard(Board board) {
		int result=0;
		boardMapper mapper=sqlSession.getMapper(boardMapper.class);
		try {
			result=mapper.updateBoard(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
	@Override
	public int deleteBoard(Board board) {
		int result=0;
		boardMapper mapper=sqlSession.getMapper(boardMapper.class);
		try {
			result=mapper.deleteBoard(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
	
	@Override
	public Board selectBoardByboardNum(Board board) {
		Board result=null;
		boardMapper mapper=sqlSession.getMapper(boardMapper.class);
		try {
			result=mapper.selectBoardByboardNum(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Board> selectAllBoard() {
		ArrayList<Board> result=null;
		boardMapper mapper=sqlSession.getMapper(boardMapper.class);
		try {
			result=mapper.selectAllBoard();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
