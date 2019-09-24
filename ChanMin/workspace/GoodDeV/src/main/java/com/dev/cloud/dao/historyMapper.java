package com.dev.cloud.dao;

import java.util.List;

import com.dev.cloud.vo.History;
import com.dev.cloud.vo.Total;

public interface historyMapper {

	public int insertHistory(Total total);
	
	public List<Total> selectAllHistory(Total total);
	
	public List<Total> historyIdDetail(Total total);
	
	public Total historyDetail(Total total);
}
