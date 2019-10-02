package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.Reply;


public interface replyMapper {

	// 리플등록
	public int insert_reply(Reply reply);

	// 리플수정
	public int update_reply(Reply reply);

	// 선택
	public Reply selectOne_reply(Reply reply);

	// 전체선택
	public ArrayList<Reply> selectAll_reply(Reply reply);

	// 리플삭제
	//삭제시 reply='이글은 삭제되었습니다.'로 변경 
	public int delete_reply(Reply reply);

}
