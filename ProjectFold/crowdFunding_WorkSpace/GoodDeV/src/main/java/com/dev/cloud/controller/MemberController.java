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
	public String gomain() { // 홈이동
		return "/index";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String main() { // 홈이동 (리다이렉트)
		return "redirect:/";
	}

	@RequestMapping(value = "gologin", method = RequestMethod.GET)
	public String gologin() { // 로그인창 이동
		return "/member/login";
	}

	@RequestMapping(value = "gosign", method = RequestMethod.GET)
	public String gosign() { // 회원가입창 이동
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
	public String login(Member member, HttpSession session) { // 로그인 폼 request
		System.out.println(member);
		Member mem = dao.login_member(member);
		if (mem != null) {
			session.setAttribute("loginId", mem.getId());
			session.setAttribute("loginName", mem.getMemberName());
			session.setAttribute("loginType", mem.getMemberType());
			System.out.println("로그인 성공 : " + member);
			return "redirect:/";
		} else {
			System.out.println("로그인 실패");
		}
		return "redirect:/";
	}

	@RequestMapping(value = "signupform")
	public String signup_member(Member member, HttpSession session) {	// 회원가입 폼 request
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

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
