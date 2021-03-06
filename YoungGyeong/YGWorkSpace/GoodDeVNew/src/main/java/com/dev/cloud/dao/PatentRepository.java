package com.dev.cloud.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Pat;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.PatentTotal;
import com.dev.cloud.vo.Patentsub;
import com.dev.cloud.vo.PdpVo;

@Repository
public class PatentRepository implements patentMapper {
		
	@Autowired
	SqlSession session;

	@Override
	public List<Patent> searchPatent(Pat pat) {
		patentMapper mapper = session.getMapper(patentMapper.class);
		List<Patent> pList = null;
		try{
			pList = mapper.searchPatent(pat);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return pList;
	}

	@Override
	public List<Patent> patentIdAll(String patentHolderName) {
		patentMapper mapper = session.getMapper(patentMapper.class);
		List<Patent> pList = null;
		try{
			pList = mapper.patentIdAll(patentHolderName);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return pList;
	}

	@Override
	public List<Patent> patentAll() {
		patentMapper mapper = session.getMapper(patentMapper.class);
		List<Patent> pList = null;
		try{
			pList = mapper.patentAll();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return pList;
	}

	@Override
	public Patent selectPatent(Patent patent) {
		patentMapper mapper = session.getMapper(patentMapper.class);
		Patent result =null;
		try {
			result = mapper.selectPatent(patent);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int insertPatent(PatentTotal paten) {
		patentMapper mapper = session.getMapper(patentMapper.class);
		int result =0;
		try {
			result = mapper.insertPatent(paten);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Patent patsearchNum(String patentNum) {
		patentMapper mapper = session.getMapper(patentMapper.class);
		Patent result =null;
		try {
			result = mapper.patsearchNum(patentNum);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<PdpVo> pdpIdAll(String memberName) {
		patentMapper mapper = session.getMapper(patentMapper.class);
		List<PdpVo> pList = null;
		try{
			pList = mapper.pdpIdAll(memberName);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return pList;

	}

	@Override
	public List<PdpVo> pdpIdGo(String memberName) {
		patentMapper mapper = session.getMapper(patentMapper.class);
		List<PdpVo> pList = null;
		try{
			pList = mapper.pdpIdGo(memberName);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return pList;

	}

	
}
