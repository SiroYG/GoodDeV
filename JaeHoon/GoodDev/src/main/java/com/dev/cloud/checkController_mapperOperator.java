package com.dev.cloud;


import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dev.cloud.dao.memberRepository;
import com.dev.cloud.vo.devMember;

/**
 * Handles requests for the application home page.
 */
@Controller
public class checkController_mapperOperator {
	
	@Autowired 
	memberRepository repo;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		String sysout;

		devMember temp=new devMember();
		temp.setMemberId("temp");
		temp.setMemberPw("temp");
		temp.setMemberType("temp");
		temp.setEmail("temp");
		temp.setPhoneNum("010-1111-1111");
		temp.setMemberName("홍길동");
		
		System.out.println(temp);

		devMember copiedTemp=new devMember();
		copiedTemp=temp;
		int resultInt =repo.signup_member(temp);
		sysout=checkInt(resultInt, "signup_member");
		System.out.println(sysout);
		//회원가입확인
		
		devMember resultObject=repo.login_member(temp);
		sysout=checkObject(resultObject, "login_member");
		System.out.println(sysout);
		//로그인확인
		
		resultObject=repo.searchId_pw_member(temp);
		sysout=checkObject(resultObject, "searchId_pw_member");
		System.out.println(sysout);
		//아디비번찾기 확인
		
		
		temp.setPhoneNum("010-1234-5678");
		resultInt=repo.update_member(temp);
		sysout=checkInt(resultInt, "signup_member");
		System.out.println(sysout);
		System.out.println(temp);

		//회원수정확인
		
		temp.setMemberType("none");
		resultInt=repo.delete_member(temp);
		sysout=checkInt(resultInt, "signup_member");
		System.out.println(sysout);
		System.out.println(temp);
		//회원삭제 type이 변경됨확인
		
		return "mapperOperator";
	}
	
	public String checkInt(int resultInt, String methodName){
		
		if(resultInt==0){
			return methodName+"메소드 실패";
		}
		return methodName+"메소드성공";
		
	}
	public String checkObject(Object resultInt, String methodName){
		
		if(resultInt==null){
			return methodName+"메소드 실패";
		}
		return methodName+"메소드성공";
		
	}
	
}
