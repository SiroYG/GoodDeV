package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.FundingOption;

@Repository
public class fundingOptionRepository implements fundingOptionMapper {

	@Autowired
	SqlSession sqlSesson;
	
	@Override
	public int insertFundingOption(FundingOption fundingOption) {
		fundingOptionMapper mapper=sqlSesson.getMapper(fundingOptionMapper.class);
		int result=0;
		try {
			result=mapper.insertFundingOption(fundingOption);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updateFundingOption(FundingOption fundingOption) {
		fundingOptionMapper mapper=sqlSesson.getMapper(fundingOptionMapper.class);
		int result=0;
		try {
			result=mapper.updateFundingOption(fundingOption);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<FundingOption> selectFundingOption(FundingOption fundingOption) {
		fundingOptionMapper mapper=sqlSesson.getMapper(fundingOptionMapper.class);
		ArrayList<FundingOption> result=null;
		try {
			result=mapper.selectFundingOption(fundingOption);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int deleteFundingOption(FundingOption fundingOption) {
		fundingOptionMapper mapper=sqlSesson.getMapper(fundingOptionMapper.class);
		int result=0;
		try {
			result=mapper.deleteFundingOption(fundingOption);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
