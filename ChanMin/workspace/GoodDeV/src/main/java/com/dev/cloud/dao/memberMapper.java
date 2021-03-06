package com.dev.cloud.dao;

import com.dev.cloud.vo.Payment;
import com.dev.cloud.vo.devMember;

public interface memberMapper {

	//회원가입
	public int signup_member(devMember member);
	
	//로그인
	public devMember login_member(devMember member);

	//아이디/비번찾기
	public devMember searchId_pw_member(devMember member);

	//회원수정
	public int update_member(devMember member);

	//회원탈퇴
	public int delete_member(devMember member);

	//중복확인
	public devMember overlap(String memberId);
	
	public int devmemberPrice(devMember devmember);
	
	public devMember selectmemId(String memberId);
}
