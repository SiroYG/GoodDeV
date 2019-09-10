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

	//뎅리트시 보드를 삭제가 아닌 qType(질문타입)을 'none'으로 변경해준다.
	//정보를 유지하기 위함.
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

	
	//보드번호(pk)로 한개의 보드를 가져옴
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

	//보드테이블의 모든 정보를 출력
	@Override
	public ArrayList<Board> selectAllBoard() {
		//보드 전체 memberType과 qType의 객체를 생성해서 넣어준다.
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
