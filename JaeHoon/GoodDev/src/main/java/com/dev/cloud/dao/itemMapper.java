package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.MTI;

public interface itemMapper {

	public int insertItem(Item item);
	
	//insert시 브릿지테이블을 생성해준다.
	public int insertMTI(MTI mti);
	
	//select 회원이 가진 모든 아이템을 가져온다.
	public ArrayList<Item> selectItemById(String id);
	
	
	
	
	
}
