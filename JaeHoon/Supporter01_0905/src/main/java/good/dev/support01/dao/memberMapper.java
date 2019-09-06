package good.dev.support01.dao;

import good.dev.support01.vo.Member;

public interface memberMapper {

	//회원가입
	public int signup_member(Member member);
	
	//로그인
	public Member login_member(Member member);

	//아이디/비번찾기
	public Member searchId_pw_member(Member member);

	//회원수정
	public int update_member(Member member);

	//회원탈퇴
	public int delete_member(Member member);

	
	
}
