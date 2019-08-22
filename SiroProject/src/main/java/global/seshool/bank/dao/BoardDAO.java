package global.seshool.bank.dao;


import java.util.List;

import global.seshool.bank.vo.Board;

public interface BoardDAO {
//	글 목록보기
	public List<Board> selectAll(Board board);
//	글 등록
	public int insertBoard(Board board);
//	글 내용 자세히보기
	public Board selectOne(int boardno);
//	글 수정
	public int updateBoard(Board board);
//	글 삭제
	public int deleteBoard(int boardno);
}
 