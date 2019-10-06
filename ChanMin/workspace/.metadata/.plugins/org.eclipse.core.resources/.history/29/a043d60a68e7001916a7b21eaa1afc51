package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.Crowdfunding;
import com.dev.cloud.vo.FundingTable;

public interface crowdfundingMapper {

	//펀딩등록
	public int makeCrowdFunding(Crowdfunding crowdfunding);
	
	//펀딩투자현황수정
	public int updateCrowdFunding(Crowdfunding crowdfunding);
		
	//펀딩투자현황
	public Crowdfunding selectOneCrowdFunding(Crowdfunding crowdfunding);
	
	//펀딩전체투자현황
	public ArrayList<Crowdfunding> selectAllCrowdFunding();
		
	//회원투자(펀딩)
	public int insertFundingTable(FundingTable fundingTable);
	
	//투자수정
	public int updateFundingTable(FundingTable fundingTable);

	//회원투자(펀딩현황)
	public ArrayList<FundingTable> selectFundingTableByMemberId(FundingTable fundingTable);
	
}
