package com.dev.cloud.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.dev.cloud.vo.Crowdfunding;
import com.dev.cloud.vo.Payment;

public interface fundingMapper {
	//게시판 카운트
	public int getBoardCount(Map<String, Object> map);
	//게시판 출력
	public List<Crowdfunding> selectAll(Map<String, String> map, RowBounds rb);
	//게시판디테일
	public Crowdfunding selectOneCrowdFunding(int boardNum);
	
	//펀딩등록
	public int makeCrowdFunding(Crowdfunding crowdfunding);
	
	public List<Crowdfunding> mypageFunding(String memberId);
	
	public Crowdfunding selectfundingTitle(String fundingTitle);
	
	public int updateCurrentPrice(Crowdfunding crowdfunding);
}
