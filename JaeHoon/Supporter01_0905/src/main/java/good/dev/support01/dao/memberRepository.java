package good.dev.support01.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import good.dev.support01.vo.Member;

@Repository
public class memberRepository implements memberMapper {

	SqlSession session; 
	
	@Override
	public int signup_member(Member member) {
		memberMapper mapper=session.getMapper(memberMapper.class);
		int result=0;
		try {
			result= mapper.signup_member(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public Member login_member(Member member) {
		memberMapper mapper=session.getMapper(memberMapper.class);
		Member result=null;
		try {
			result= mapper.login_member(member);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Member searchId_pw_member(Member member) {
		memberMapper mapper=session.getMapper(memberMapper.class);
		Member result=null;
		try {
			result= mapper.searchId_pw_member(member);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int update_member(Member member) {
		memberMapper mapper=session.getMapper(memberMapper.class);
		int result=0;
		try {
			result= mapper.update_member(member);

		} catch (Exception e) {
			e.printStackTrace();
		}// TODO Auto-generated method stub
		return result;
	}

	@Override
	public int delete_member(Member member) {
		memberMapper mapper=session.getMapper(memberMapper.class);
		int result=0;
		try {
			result= mapper.delete_member(member);

		} catch (Exception e) {
			e.printStackTrace();
		}// TODO Auto-generated method stub
		return result;
	}

}