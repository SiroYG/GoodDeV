package com.dev.cloud.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dev.cloud.dao.memberRepository;
import com.dev.cloud.vo.Member;


@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	memberRepository dao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String gomain() {
		return "/index";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String main() {
		return "redirect:/";
	}
	
	@RequestMapping(value = "gologin", method = RequestMethod.GET)
	public String gologin() {
		return "/member/login";
	}
	@RequestMapping(value = "gosign", method = RequestMethod.GET)
	public String gosign() {
		return "/member/signin";
	}
	
	@RequestMapping(value = "gofindid", method = RequestMethod.GET)
	public String gofindid() {
		return "/member/findid";
	}
	@RequestMapping(value = "gofindpw", method = RequestMethod.GET)
	public String gofindpw() {
		return "/member/findpw";
	}
	
	@RequestMapping(value = "goupdate", method = RequestMethod.GET)
	public String goupdate() {
		return "/member/update";
	}
	@RequestMapping(value = "godropout", method = RequestMethod.GET)
	public String godropout() {
		return "/member/udropout";
	}
	@RequestMapping(value = "loginform")
	public String login(Member member , HttpSession session) {
		System.out.println(member);
		if (dao.login_member(member)!=null) {
			session.setAttribute("loginId", member.getId());
			session.setAttribute("loginName", member.getMemberName());
			session.setAttribute("loginType", member.getMemberType());
			System.out.println("로그인 성공 : " + member);
			return "redirect:/";
		} else {
			System.out.println("로그인 실패");
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
