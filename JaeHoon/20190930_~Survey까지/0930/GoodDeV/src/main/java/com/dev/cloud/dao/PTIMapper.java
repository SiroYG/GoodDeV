package com.dev.cloud.dao;

import com.dev.cloud.vo.PTI;

public interface PTIMapper {

	//브릿지 테이블 생성
	public int insertPTI(PTI pti);
	
	
	//가계약서 (신청 인서트시 신청으로 되어있음.), 승이, 거절에 따라서 업데이트 해주기 위함.
	public int updatePTI(PTI pti);
	
	
	
}
