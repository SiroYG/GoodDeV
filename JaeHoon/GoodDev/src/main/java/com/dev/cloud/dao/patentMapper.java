package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.Patent;

public interface patentMapper {
	
	//특허 생성
	public int insertPatent(Patent patent);
	
	//특허 승인(update)
	public int updatePatent(Patent patent);
	
	//////////////////////////////////

	//특허 리스트  
	public ArrayList<Patent> patentAll();
	
	//멤버이름(특허등록자 이름)으로 셀렉트올
	public ArrayList<Patent> patentIdAll(String memberName);
	
	//분류별, 검색어별 셀렉트
	public ArrayList<Patent> searchPatent(Patent patent);
	
}
