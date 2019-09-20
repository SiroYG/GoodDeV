package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.MTI;

@Repository
public class itemRepository implements itemMapper {

	@Autowired
	SqlSession sqlSession;
	//아이템 삽입
	@Override
	public int insertItem(Item item) {
		itemMapper mapper = sqlSession.getMapper(itemMapper.class);

		int result = 0;
		try {
			result = mapper.insertItem(item);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	//아이템 삽입 후 MTI(Item to Member)를 이어주는 브릿지 테이블을 생성
	@Override
	public int insertMTI(MTI mti) {
		itemMapper mapper = sqlSession.getMapper(itemMapper.class);

		int result = 0;
		try {
			result = mapper.insertMTI(mti);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
	//아이템 업데이트 쿼리
	@Override
	public int updateItem(Item item) {
		itemMapper mapper = sqlSession.getMapper(itemMapper.class);

		int result = 0;
		try {
			result = mapper.updateItem(item);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
	}

	//아이템 네임(대체키)으로 아이템 번호(pk)를 가져옴
	@Override
	public Item getItemNumByItemName(Item item) {
		itemMapper mapper = sqlSession.getMapper(itemMapper.class);

		Item result = null;
		try {
			result = mapper.getItemNumByItemName(item);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	//회원의 아이디(fk)로 회원이 가진 아이템을  가져옴 
	//회원의 아이디는 파일구조상 MIT(브릿지테이블)에 넣어줌
	@Override
	public ArrayList<Item> getItemNumById(MTI mti) {
		itemMapper mapper = sqlSession.getMapper(itemMapper.class);

		ArrayList<Item> result = new ArrayList<>();
		try {
			result = mapper.getItemNumById(mti);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		return result;
	}

	
	//아이템 번호로 아이템의 모든 정보를 가져옴.
	//아이템 번호(fk)는 파일구조상 MIT(브릿지테이블)에 넣어줌
	@Override
	public Item selectItemByItemNum(MTI mti) {

		itemMapper mapper = sqlSession.getMapper(itemMapper.class);

		Item result = new Item();
		try {
			result = mapper.selectItemByItemNum(mti);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		return result;
	}

}