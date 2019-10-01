package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Item;

@Repository
public class itemRepository implements itemMapper {

	@Autowired
	SqlSession sqlSession;
	// 아이템 삽입

	@Override
	public int insertItem(Item item) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		int result=0;
		try {
			result=mapper.insertItem(item);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Item> getItemNumByItemType(Item item) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		ArrayList<Item> result=null;
		try {
			result=mapper.getItemNumByItemType(item);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Item> getAllItem() {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		ArrayList<Item> result=null;
		try {
			result=mapper.getAllItem();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Item> getItemByMemberId(Item item) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		ArrayList<Item> result=null;
		try {
			result=mapper.getItemByMemberId(item);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int updateItem(Item item) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		int result=0;
		try {
			result=mapper.updateItem(item);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int deleteItem(Item item) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		int result=0;
		try {
			result=mapper.deleteItem(item);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Item getOneItemByItemNum(Item item) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		Item result=null;
		try {
			result=mapper.getOneItemByItemNum(item);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return result;
	}
}
