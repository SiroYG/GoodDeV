package com.dev.cloud.dao;

import java.util.ArrayList;
import java.util.List;

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



	@Override
	public List<Item> selectAllItem(Item item) {
		itemMapper mapper = sqlSession.getMapper(itemMapper.class);

		List<Item> result = null;
		try {
			result = mapper.selectAllItem(item);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		return result;
	}

	public Item selectOneItem(Item item) {
		itemMapper mapper = sqlSession.getMapper(itemMapper.class);
		
		Item result = null;
		try {
			result = mapper.selectOneItem(item);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		return result;
	}

}