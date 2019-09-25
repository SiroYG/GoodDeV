package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.Board;

public interface boardMapper {

	public int insertBoard(Board board);
	
	public int updateBoard(Board board);

	public int deleteBoard(Board board);

	public ArrayList<Board> selectAllBoard();
	
	public Board selectBoardByboardNum(Board board);
}
