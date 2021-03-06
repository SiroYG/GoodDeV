package com.dev.cloud.dao;


import com.dev.cloud.vo.Document;
import com.dev.cloud.vo.ItemDo;
import com.dev.cloud.vo.PdpVo;

public interface documentMapper {
		
	//document 삽입
	public int insertDocument(ItemDo itemdo);
	
	//document 변경
	public int updateDocument(ItemDo itemdo);
	
	public int updateDocu(PdpVo pdp);
	
	public Document selectDocu(int DocumentNum);
}
