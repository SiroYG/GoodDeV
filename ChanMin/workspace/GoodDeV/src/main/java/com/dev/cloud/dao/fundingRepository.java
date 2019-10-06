package com.dev.cloud.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dev.cloud.vo.Board;
import com.dev.cloud.vo.Crowdfunding;
import com.dev.cloud.vo.FundingTable;

@Repository
public class fundingRepository {
	
	@Autowired
	private SqlSession sqlSession;

	public int getBoardCount(String searchItem, String searchWord) {
		fundingMapper mapper = sqlSession.getMapper(fundingMapper.class);
		Map<String, Object> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		int total = mapper.getBoardCount(map);	
		return total;
	}

	public List<Crowdfunding> selectAll(String searchItem, String searchWord, int startRecord, int countPerPage) {
		List<Crowdfunding> list;
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		fundingMapper mapper = sqlSession.getMapper(fundingMapper.class);

		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		list = mapper.selectAll(map, rb);
		
		System.out.println("조회된 데이터 개수 => " + list.size());
		return list;
	}

	public Crowdfunding selectOneCrowdFunding(int boardNum) {
		fundingMapper mapper = sqlSession.getMapper(fundingMapper.class);
		Crowdfunding Crowdfunding = mapper.selectOneCrowdFunding(boardNum);

		return Crowdfunding;
	}


	public int insertBoard(Crowdfunding Crowdfunding) {
		System.out.println("board repo=>" + Crowdfunding);
		fundingMapper mapper = sqlSession.getMapper(fundingMapper.class);

		int result = mapper.makeCrowdFunding(Crowdfunding);
		return result;
	}

	public List<Crowdfunding> mypageFunding(String memberId){
		fundingMapper mapper = sqlSession.getMapper(fundingMapper.class);
		
		List<Crowdfunding> result = mapper.mypageFunding(memberId);
		
		return result;
	}
}
