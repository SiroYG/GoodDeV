package com.dev.cloud.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.dev.cloud.vo.Patent;

public interface patentMapper {

	//특허 생성
	public int insertPatent(Patent patent);
	
	//특허 승인(update)
	public int updatePatent(Patent patent);
	
	//게시판 출력
	List<Patent> selectAll(Map<String, String> map, RowBounds rb);
	
	//게시판디테일
	Patent selectOne(int patentNum);

	//게시판 카운트
	int getBoardCount(Map<String, Object> map);
}
