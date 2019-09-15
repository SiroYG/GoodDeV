package com.dev.cloud.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dev.cloud.dao.memberRepository;
import com.dev.cloud.vo.devMember;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	memberRepository dao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String gomain() { // 홈이동
		return "/index";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String main() { // 홈이동 (리다이렉트)
		return "redirect:/";
	}

	@RequestMapping(value = "/gologin", method = RequestMethod.GET)
	public String gologin() { // 로그인창 이동
		return "/member/login";
	}

	@RequestMapping(value = "/gosign", method = RequestMethod.GET)
	public String gosign() { // 회원가입창 이동
		return "/member/signin";
	}

	@RequestMapping(value = "/gofindid", method = RequestMethod.GET)
	public String gofindid() {
		return "/member/findid";
	}

	@RequestMapping(value = "/gofindpw", method = RequestMethod.GET)
	public String gofindpw() {
		return "/member/findpw";
	}

	@RequestMapping(value = "/goupdate", method = RequestMethod.GET)
	public String goupdate() {
		return "/member/update";
	}

	@RequestMapping(value = "/godropout", method = RequestMethod.GET)
	public String godropout() {
		return "/member/udropout";
	}

	@RequestMapping(value = "/loginform" ,method=RequestMethod.POST)
	public String login(devMember member, HttpSession session) { // 로그인 폼 request
		System.out.println(member);
		devMember mem = dao.login_member(member);
		if (mem != null) {
			session.setAttribute("loginId", mem.getMemberId());
			session.setAttribute("loginName", mem.getMemberName());
			session.setAttribute("loginType", mem.getMemberType());
			System.out.println("로그인 성공 : " + member);
			return "redirect:/";
		} else {
			System.out.println("로그인 실패");
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/signupform", method=RequestMethod.POST)
	public String signup_member(devMember member, HttpSession session) {	// 회원가입 폼 request
		System.out.println(member);
		try {
			int signup = dao.signup_member(member);
			if (signup == 1) {
				System.out.println("회원가입 성공 : " + member);
				return "redirect:/";
			} else {
				System.out.println("회원가입 실패");
			}
		} catch (Exception e) {
			return "redirect:/member/gosign";
		}

		return "redirect:/member/gosign";
	}

	
	@RequestMapping(value = "/updateform" ,method=RequestMethod.POST)
	public String update_member(devMember member, HttpSession session) { // 회원수정 폼 request
		System.out.println("update의member==>"+member);
		try{
		int update = dao.update_member(member);
		if(update==1){
			System.out.println("회원수정 성공 : " + member);
			return "redirect:/";
		}else{
			System.out.println("회원수정 실패");
		}
		}catch (Exception e) {
			return "redirect:/member/update";
		}
		return "redirect:/member/update";
	}
	
	@RequestMapping(value = "/dropoutform" ,method=RequestMethod.POST)
	public String dropout_member(devMember member, HttpSession session) { // 회원수정 폼 request
		System.out.println("delete의member==>"+member);
		try{
		int dropout = dao.delete_member(member);
		if(dropout==1){
			System.out.println("회원삭제 성공 : " + member);
			return "redirect:/";
		}else{
			System.out.println("회원삭제 실패");
		}
		}catch (Exception e) {
			return "redirect:/member/dropout";
		}
		return "redirect:/member/dropout";
	}
	
	@ResponseBody
	@RequestMapping(value ="/searchId", method=RequestMethod.POST)
	public String searchId_member(devMember member) { // 회원id 폼 request
		System.out.println("searchId의 member==>"+member);
		devMember searchId_pw = dao.searchId_pw_member(member);
		try{
		if(searchId_pw!=null){
			System.out.println("아이디 찾기 성공 : " + member);
			return searchId_pw.getMemberId();
			
		}else{
			System.out.println("아이디 찾기 실패");
			return "";
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return searchId_pw.getMemberId();
	}
	
	@ResponseBody
	@RequestMapping(value ="/searchPw", method=RequestMethod.POST)
	public String searchpw_member(devMember member) { // 회원id 폼 request
		System.out.println("searchpw의 member==>"+member);
		devMember searchId_pw = dao.searchId_pw_member(member);
		try{
		if(searchId_pw!=null){
			System.out.println("비번 찾기 성공 : " + member);
			return searchId_pw.getMemberPw();
		}else{
			System.out.println("비번 찾기 실패");
			return "";
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return searchId_pw.getMemberPw();
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
