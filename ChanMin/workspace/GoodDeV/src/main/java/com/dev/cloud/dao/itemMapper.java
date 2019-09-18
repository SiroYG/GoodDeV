package com.dev.cloud.dao;

import java.util.ArrayList;
import java.util.List;

import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.MTI;

public interface itemMapper {

	    //가계약 신청시 아이템생성
		public int insertItem(Item item);
		
		public List<Item>selectAllItem(Item item);
		
		//아이템등록시 (가계약에서)생성된 아이템 수정
		public int updateItem(Item item);
		
		//item의 seq 을 넣어 줄꺼임!
		public Item selectOneItem(Item item);
		
	
}
