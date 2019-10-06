package com.dev.cloud.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.dev.cloud.vo.Crowdfunding;

public interface fundingMapper {
	
	//게시판 카운트
	int getBoardCount(Map<String, Object> map);
	//게시판 출력
	List<Crowdfunding> selectAll(Map<String, String> map, RowBounds rb);
	//게시판디테일
	Crowdfunding selectOne(int boardNum);
	//펀딩등록
	public int makeCrowdFunding(Crowdfunding crowdfunding);
	
	
}