package com.seschool.bank.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.seschool.bank.vo.Board;

public interface BoardMapper {

	int getBoardCount(Map<String, Object> map);

	List<Board> selectAll(Map<String, String> map, RowBounds rb);

	Board selectOne(int boardno);

	int deleteBoard(int boardno);

	int insertBoard(Board board);

}
