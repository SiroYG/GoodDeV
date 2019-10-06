package com.dev.cloud.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.ItemDo;
import com.dev.cloud.vo.MTI;
import com.dev.cloud.vo.PdpVo;
import com.dev.cloud.vo.Total;
import com.dev.cloud.vo.devMember;

@Repository
public class itemRepository implements itemMapper {

	@Autowired
	SqlSession sqlSession;
	//아이템 삽입

	@Override
	public int insertItem(Total total) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		int result=0;
		try {
			result=mapper.insertItem(total);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Total> getItemNumByItemType(Total total) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		ArrayList<Total> result=null;
		try {
			result=mapper.getItemNumByItemType(total);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Total> getAllItem() {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		ArrayList<Total> result=null;
		try {
			result=mapper.getAllItem();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Total> getItemByMemberId(Total total) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		ArrayList<Total> result=null;
		try {
			result=mapper.getItemByMemberId(total);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int updateItem(Total total) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		int result=0;
		try {
			result=mapper.updateItem(total);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int deleteItem(Total total) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		int result=0;
		try {
			result=mapper.deleteItem(total);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Total goItemDetail(Total total) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		Total result = null;
		try {
			result = mapper.goItemDetail(total);
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		
		
		return result;
	}

	@Override
	public List<Total> getIdDe(Total total) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		 List<Total> result = null;
		try {
			result = mapper.getIdDe(total);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public Total gohisD(Total total) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		Total result = null;
		try {
			result = mapper.gohisD(total);
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		
		
		return result;
		
	}

	@Override
	public int updateItemDo(ItemDo itemdo) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		int result=0;
		try {
			result=mapper.updateItemDo(itemdo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Item selectItemNum(int itemNum) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		Item result = null;
		try {
			result = mapper.selectItemNum(itemNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		
		
		return result;
		
	}

	@Override
	public int pdpUpdate(PdpVo pd) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		int result=0;
		try {
			result=mapper.pdpUpdate(pd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Total getOneItemByItemNum(Total total) {
		itemMapper mapper=sqlSession.getMapper(itemMapper.class);
		Total result = null;
		try {
			result = mapper.getOneItemByItemNum(total);
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		
		
		return result;
	}
}
