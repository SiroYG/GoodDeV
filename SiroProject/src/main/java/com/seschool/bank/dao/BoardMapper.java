package com.seschool.bank.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.seschool.bank.vo.Board;

public interface BoardMapper {
	//게시판 카운트
	int getBoardCount(Map<String, Object> map);
	//게시판 출력
	List<Board> selectAll(Map<String, String> map, RowBounds rb);
	//게시판디테일
	Board selectOne(int boardno);
	//게시판 삭제
	int deleteBoard(int boardno);
	//게시판 등록
	int insertBoard(Board board);
	
	
	//추기기능
	//게시판 업데이트
	int updateBoard(int boardno);

}
