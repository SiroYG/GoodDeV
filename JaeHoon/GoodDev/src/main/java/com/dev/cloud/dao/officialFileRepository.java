package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.officialFile;

@Repository
public class officialFileRepository implements officialFileMapper {

	@Autowired
	SqlSession sqlSession;
	@Override
	public ArrayList<officialFile> selectOfficialFile() {
		
		ArrayList<officialFile> oList=null;
		officialFileMapper mapper=sqlSession.getMapper(officialFileMapper.class);
		
		try {
			oList=mapper.selectOfficialFile();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return oList;
	}

}
