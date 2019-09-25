package com.dev.cloud.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.dev.cloud.vo.Pat;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.PatentTotal;

public interface patentMapper {

	//특허 승인(update)
	public int updatePatent(Patent patent);
	
	//게시판 출력
	List<Patent> selectAll(Map<String, String> map, RowBounds rb);
	
	//게시판디테일
	Patent selectOne(int patentNum);

	//게시판 카운트
	int getBoardCount(Map<String, Object> map);
	
	//특허 리스트  
	public List<Patent> searchPatent(Pat pat);
	public List<Patent> patentIdAll(String memberId);
	public List<Patent> patentAll();
	public Patent selectPatent(Patent patent);
	public int insertPatent(PatentTotal paten);
	public Patent patsearchNum(String patentNum);

}
