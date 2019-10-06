package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.Board;

public interface boardMapper {

	public int insertBoard(Board board);
	
	public int updateBoard(Board board);

	//뎅리트시 보드를 삭제가 아닌 qType(질문타입)을 'none'으로 변경해준다.
		//정보를 유지하기 위함.
	public int deleteBoard(Board board);

	//보드 전체 memberType과 qType의 객체를 생성해서 넣어준다.
	public ArrayList<Board> selectAllBoard();
	
	//보드번호(pk)로 한개의 보드를 가져옴
	public Board selectBoardByboardNum(Board board);
}
