package com.dev.cloud.dao;

import java.util.List;

import com.dev.cloud.vo.Pat;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.PatentTotal;
import com.dev.cloud.vo.Patentsub;

public interface patentMapper {

	//특허 리스트  
	public List<Patent> searchPatent(Pat pat);
	
	public List<Patent> patentIdAll(String memberId);
	
	public List<Patent> patentAll();
	
	public Patent selectPatent(Patent patent);
	
	public int insertPatent(PatentTotal paten);
	
	public Patent patsearchNum(String patentNum);
}
