package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.MTI;

public interface itemMapper {
	//가계약 신청시 아이템생성
	public int insertItem(Item item);
	
	//insert시 브릿지테이블을 생성해준다.
	public int insertMTI(MTI mti);
	
	public Item getItemNumByItemName(Item item);

	
	//select 회원이 가진 모든 아이템을 가져온다.
	public Item selectItemByItemNum(MTI mti);
	
	//보드 전체 memberType과 qType의 객체를 생성해서 넣어준다.
	//회원의 아이디는 파일구조상 MIT(브릿지테이블)에 넣어줌
	public ArrayList<Item> getItemNumById(MTI mti);

	
	//아이템등록시 (가계약에서)생성된 아이템 수정
	public int updateItem(Item item);
	
	
}




