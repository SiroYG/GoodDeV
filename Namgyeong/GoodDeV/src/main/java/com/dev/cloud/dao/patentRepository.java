package com.dev.cloud.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dev.cloud.vo.Board;
import com.dev.cloud.vo.Pat;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.PatentTotal;

@Repository
public class PatentRepository{
	
	@Autowired
	private SqlSession sqlSession;
	
	public int getBoardCount(String searchItem, String searchWord) {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		Map<String, Object> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		int total = mapper.getBoardCount(map);	
		return total;
	}
	public List<Patent> selectAll(String searchItem, String searchWord, int startRecord, int countPerPage) {
		List<Patent> list;
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		list = mapper.selectAll(map, rb);
		System.out.println("조회된 데이터 개수 => " + list.size());
		return list;
	}
	
	
	
	public Patent selectOne(int patentNum) {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		Patent Patent = mapper.selectOne(patentNum);

		return Patent;
	}
	

	public List<Patent> searchPatent(Pat pat) {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		List<Patent> pList = null;
		try{
			pList = mapper.searchPatent(pat);
		}catch (Exception e) {
			e.printStackTrace();
		
		return pList;
		}
		return pList;
	}
	

	public List<Patent> patentIdAll(String patentHolderName) {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		List<Patent> pList = null;
		try{
			pList = mapper.patentIdAll(patentHolderName);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return pList;
	}

	
	public List<Patent> patentAll() {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		List<Patent> pList = null;
		try{
			pList = mapper.patentAll();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return pList;
	}

	
	public Patent selectPatent(Patent patent) {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		Patent result =null;
		try {
			result = mapper.selectPatent(patent);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
	public int insertPatent(PatentTotal paten) {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		int result =0;
		try {
			result = mapper.insertPatent(paten);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
	public Patent patsearchNum(String patentNum) {
		patentMapper mapper = sqlSession.getMapper(patentMapper.class);
		Patent result =null;
		try {
			result = mapper.patsearchNum(patentNum);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
}
