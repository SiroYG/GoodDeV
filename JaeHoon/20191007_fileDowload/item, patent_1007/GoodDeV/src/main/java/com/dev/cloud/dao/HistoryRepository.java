package com.dev.cloud.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Total;

@Repository
public class HistoryRepository implements historyMapper {
	
	@Autowired
	SqlSession session;
	
	@Override
	public int insertHistory(Total total) {
		historyMapper mapper = session.getMapper(historyMapper.class);
		int result = 0;
			try{
				result = mapper.insertHistory(total);
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
			return result;

	}

	@Override
	public List<Total> selectAllHistory(Total total) {
		historyMapper mapper = session.getMapper(historyMapper.class);
			List<Total> result = null;
			try{
				result = mapper.selectAllHistory(total);
			}catch (Exception e) {
				e.printStackTrace();
			}
			return result;
	}

	@Override
	public Total historyDetail(Total total) {
		historyMapper mapper = session.getMapper(historyMapper.class);
		Total result = null;
		try{
			result = mapper.historyDetail(total);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<Total> historyIdDetail(Total total) {
		historyMapper mapper = session.getMapper(historyMapper.class);
		List<Total> result = null;
		try{
			result = mapper.historyIdDetail(total);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
