package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.History;

public interface historyMapper {

	//버전입력
	public int insertHistory(History history);
	
	//itemNum별 히스토리
	public ArrayList<History> selectAllHistory(History history);
	
	//버전입력
	public int updateHistory(History history);
	
}
