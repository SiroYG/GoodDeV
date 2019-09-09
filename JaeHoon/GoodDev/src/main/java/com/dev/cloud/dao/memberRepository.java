package com.dev.cloud.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.devMember;

@Repository
public class memberRepository implements memberMapper {

	@Autowired
	private SqlSession sqlSession; 
	
	@Override
	public int signup_member(devMember member) {
		System.out.println("15"+member);
		 memberMapper mapper=sqlSession.getMapper(memberMapper.class);
		int result=0;
		try {
			result= mapper.signup_member(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public devMember login_member(devMember member) {
		memberMapper mapper=sqlSession.getMapper(memberMapper.class);
		devMember result=null;
		try {
			result= mapper.login_member(member);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public devMember searchId_pw_member(devMember member) {
		memberMapper mapper=sqlSession.getMapper(memberMapper.class);
		devMember result=null;
		try {
			result= mapper.searchId_pw_member(member);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int update_member(devMember member) {
		memberMapper mapper=sqlSession.getMapper(memberMapper.class);
		int result=0;
		try {
			result= mapper.update_member(member);

		} catch (Exception e) {
			e.printStackTrace();
		}// TODO Auto-generated method stub
		return result;
	}

	@Override
	public int delete_member(devMember member) {
		memberMapper mapper=sqlSession.getMapper(memberMapper.class);
		int result=0;
		try {
			result= mapper.delete_member(member);

		} catch (Exception e) {
			e.printStackTrace();
		}// TODO Auto-generated method stub
		return result;
	}

}
