package com.dev.cloud.dao;

import com.dev.cloud.vo.Document;

public interface documentMapper {

	//document 삽입
	public int insertDocument(Document document);
	
	//document 변경
	public int updateDocument(Document document);
	
}
