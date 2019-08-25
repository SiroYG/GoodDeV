package global.seshool.bank.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.seshool.bank.vo.Board;

@Repository
public class BoardRepository {

	@Autowired
	SqlSession session;

	public List<Board> selectAll(String searchItem, String searchWord, int startRecord, int countPerPage) {
	List<Board> list;
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		BoardDAO mapper = session.getMapper(BoardDAO.class); // reflection

		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		list = mapper.selectAll(map, rb);
		
		System.out.println("조회된 데이터 개수 => " + list.size());
		return list;
	}

	public int insertBoard(Board board) {
		System.out.println("board repo=>" + board);
		BoardDAO mapper = session.getMapper(BoardDAO.class);

		int result = mapper.insertBoard(board);
		return result;
	}

	public Board selectOne(int boardno) {
		BoardDAO mapper = session.getMapper(BoardDAO.class);
		Board board = mapper.selectOne(boardno);

		return board;
	}

	public int updateBoard(Board board) {
		BoardDAO mapper = session.getMapper(BoardDAO.class);

		System.out.println(board);
		int result = mapper.updateBoard(board);
		System.out.println("수정결과 : " + result);
		return result;
	}

	public int deleteBoard(int boardno) {
		BoardDAO mapper = session.getMapper(BoardDAO.class);
		int result = mapper.deleteBoard(boardno);
		return result;

	}
	
	
	public int getBoardCount(String searchItem, String searchWord) {
		BoardDAO mapper = session.getMapper(BoardDAO.class);
		Map<String, Object> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		int total = mapper.getBoardCount(map);
		
		return total;
	}
	
}
