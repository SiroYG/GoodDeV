package global.seshool.bank.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import global.seshool.bank.vo.Board;

public interface AdminDAO {

//	관리자 / 문의답변 목록보기(게시판호출)
	public List<Board> selectAll(Map<String, String> map, RowBounds rb);
	
//	관리자 / 문의답변 자세히보기
	public Board selectOne(int boardno);
	
//	관리자 / 문의 답변 [update]를 통해 답변등록.
	public int updateBoard(Board board);
	
//	게시글 삭제
	public int deleteBoard(int boardno);
	
// 게시글 인덱싱
	public int getBoardCount(Map<String, Object> map);
}
 