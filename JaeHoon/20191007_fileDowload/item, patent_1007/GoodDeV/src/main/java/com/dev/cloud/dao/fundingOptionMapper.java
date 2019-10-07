package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.FundingOption;

public interface fundingOptionMapper {

	public int insertFundingOption(FundingOption fundingOption);
	
	public int updateFundingOption(FundingOption fundingOption);
	
	public ArrayList<FundingOption> selectFundingOption(FundingOption fundingOption);
	
	public int deleteFundingOption(FundingOption fundingOption);
	
	
}
