package com.dev.cloud.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Patent;

@Repository
public class PatentRepository implements patentMapper {
		
	@Autowired
	SqlSession session;

	@Override
	public List<Patent> patentAll() {
		
		return null;
	}
	
}
