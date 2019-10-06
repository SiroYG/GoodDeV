package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Crowdfunding;
import com.dev.cloud.vo.FundingTable;

@Repository
public class crowdfundingRepository implements crowdfundingMapper {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int makeCrowdFunding(Crowdfunding crowdfunding) {
		int result=0;
		crowdfundingMapper mapper=sqlSession.getMapper(crowdfundingMapper.class);
		try {
			mapper.makeCrowdFunding(crowdfunding);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updateCrowdFunding(Crowdfunding crowdfunding) {
		int result=0;
		crowdfundingMapper mapper=sqlSession.getMapper(crowdfundingMapper.class);
		try {
			mapper.updateCrowdFunding(crowdfunding);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public Crowdfunding selectOneCrowdFunding(Crowdfunding crowdfunding) {
		Crowdfunding result=null;
		crowdfundingMapper mapper=sqlSession.getMapper(crowdfundingMapper.class);
		try {
			result=mapper.selectOneCrowdFunding(crowdfunding);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<Crowdfunding> selectAllCrowdFunding() {
		ArrayList<Crowdfunding> result=null;
		crowdfundingMapper mapper=sqlSession.getMapper(crowdfundingMapper.class);
		try {
			result=mapper.selectAllCrowdFunding();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}




	@Override
	public int insertFundingTable(FundingTable fundingTable) {
		int result=0;
		crowdfundingMapper mapper=sqlSession.getMapper(crowdfundingMapper.class);
		try {
			result=mapper.insertFundingTable(fundingTable);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updateFundingTable(FundingTable fundingTable) {
		int result=0;
		crowdfundingMapper mapper=sqlSession.getMapper(crowdfundingMapper.class);
		try {
			result=mapper.updateFundingTable(fundingTable);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<FundingTable> selectFundingTableByMemberId(FundingTable fundingTable) {
		ArrayList<FundingTable> result=null;
		crowdfundingMapper mapper=sqlSession.getMapper(crowdfundingMapper.class);
		try {
			result=mapper.selectFundingTableByMemberId(fundingTable);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
