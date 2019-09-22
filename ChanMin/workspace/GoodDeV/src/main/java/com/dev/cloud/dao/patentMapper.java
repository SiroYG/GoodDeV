package com.dev.cloud.dao;

import java.util.List;

import com.dev.cloud.vo.Pat;
import com.dev.cloud.vo.Patent;

public interface patentMapper {

	//특허 리스트  
	List<Patent> searchPatent(Pat pat);
	
	List<Patent> patentIdAll(String memberId);
	
	List<Patent> patentAll();
}
