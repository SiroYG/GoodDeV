package com.dev.cloud.dao;

import java.util.ArrayList;
import java.util.List;

import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.MTI;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.devMember;

public interface itemMapper {

		//가계약 신청시 아이템생성
		public int insertItem(Item item);
		
		//아이템 타입별로 셀렉
		public ArrayList<Item> getItemNumByItemType(Item item);

		//셀렉올Item
		public ArrayList<Item> getAllItem();
		
		public Item goItemDetail(Item item);
		
		//셀렉byId
		public ArrayList<Item> getItemByMemberId(Item item);

		
		//아이템등록시 (가계약에서)생성된 아이템 수정 또는 아이템수정
		public int updateItem(Item item);
		
		//아이템삭제(itemName='none')
		public int deleteItem(Item item);
		
}
