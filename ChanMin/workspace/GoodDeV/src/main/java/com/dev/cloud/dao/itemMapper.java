package com.dev.cloud.dao;

import java.util.ArrayList;
import java.util.List;

import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.ItemDo;
import com.dev.cloud.vo.MTI;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.Total;
import com.dev.cloud.vo.devMember;

public interface itemMapper {

		//가계약 신청시 아이템생성
		public int insertItem(Total total);
		
		//아이템 타입별로 셀렉
		public ArrayList<Total> getItemNumByItemType(Total total);

		//셀렉올Item
		public ArrayList<Total> getAllItem();
		
		public Total goItemDetail(Total total);
		
		//셀렉byId
		public ArrayList<Total> getItemByMemberId(Total total);
		
		public List<Total> getIdDe(Total total);
		//아이템등록시 (가계약에서)생성된 아이템 수정 또는 아이템수정
		public int updateItem(Total total);
		
		public Total gohisD(Total total);
		//아이템삭제(itemName='none')
		public int deleteItem(Total total);
		
		public int updateItemDo(ItemDo itemdo);
		
}
