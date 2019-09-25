package com.dev.cloud.dao;


import com.dev.cloud.vo.ItemDo;

public interface documentMapper {
		
	//document 삽입
	public int insertDocument(ItemDo itemdo);
	
	//document 변경
	public int updateDocument(ItemDo itemdo);
}
