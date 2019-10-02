package com.dev.cloud.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dev.cloud.vo.Chat;

@Repository
public class chatRepository {
	@Autowired
	SqlSession session;

	public int insert(Chat Chat) {
		chatMapper dao = session.getMapper(chatMapper.class);
		if (dao.insert(Chat) == 1) {
			System.out.println("등록성공");
			return 1;
		} else {
			return 0;
		}

	}

	public List<Chat> selectAll(Chat Chat) {
		chatMapper dao = session.getMapper(chatMapper.class);
		return dao.selectAll(Chat);
	}

}
