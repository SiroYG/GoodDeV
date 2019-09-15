package com.dev.cloud.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.dev.cloud.vo.Board;


public interface boardMapper {

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
	
	//게시판 업데이트
	int updateBoard(int boardno);

	
}
