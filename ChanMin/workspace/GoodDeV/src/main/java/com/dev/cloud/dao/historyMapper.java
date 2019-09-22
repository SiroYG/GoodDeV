package com.dev.cloud.dao;

import java.util.List;

import com.dev.cloud.vo.History;

public interface historyMapper {

	public int insertHistory(History history);
	
	public List<History> selectAllHistory(History history);
	
	
	
}
