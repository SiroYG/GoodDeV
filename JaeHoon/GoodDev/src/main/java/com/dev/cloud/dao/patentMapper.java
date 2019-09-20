package com.dev.cloud.dao;

import com.dev.cloud.vo.Patent;

public interface patentMapper {
	
	//특허 생성
	public int insertPatent(Patent patent);
	
	//특허 승인(update)
	public int updatePatent(Patent patent);
	
	
	
	
	
}
