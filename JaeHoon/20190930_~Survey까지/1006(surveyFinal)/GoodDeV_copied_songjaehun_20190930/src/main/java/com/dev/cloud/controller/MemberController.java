package com.dev.cloud.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dev.cloud.dao.patentRepository;
import com.dev.cloud.dao.itemRepository;
import com.dev.cloud.dao.memberRepository;
import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.Pat;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.devMember;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	memberRepository dao;
	@Autowired
	patentRepository papo;
	@Autowired
	itemRepository itpo;
	
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
		return "/member/dropout";
	}
	@RequestMapping(value = "/goMypage", method = RequestMethod.GET)
	public String goMypage() {
		System.out.println("check line77");
		
		
		return "/member/Mypage";
	}
	
	@RequestMapping(value = "/goPatent", method = RequestMethod.GET)
	public String goPatent() {
		
		return "search/search_menu";
	}
	@RequestMapping(value = "/searchGo", method = RequestMethod.GET)
	public String searhGo() {
		
		return "search/search_patent";
	}
	
	@ResponseBody
	@RequestMapping(value="/patentSu", method=RequestMethod.GET)
	public int patentSu(){
		// String memberId = session.getAttribute("loginId");
		List<Patent> pList = papo.patentAll(); 
		System.out.println("78번줄 특허 양==>"+pList.size());
		return pList.size();
	}
	
	
	@ResponseBody
	@RequestMapping(value="/patentTable", method=RequestMethod.GET)
	public List<Patent> patentTable(Pat pat,HttpSession session,int pageSu){
		
		// System.out.println("타입 : "+patentType+"\n"+"아이템: "+searchItem+"\n"+"특허타입: "+searchWord);
		//public List<Patent> patentTable(String searchWord,String patentDetail,String patentType)
		//List<Patent> pList = papo.patentAll(searchWord,patentType,patentDetail); 
		if(pat.getPatentType()!=null){
			List<Patent> pList = papo.patentAll(); 
			
			List<Patent> result = new ArrayList<Patent>();

			for(int i = 0 ; i<pList.size(); i++){
				if(i>pageSu-10){
					if(i<=pageSu){
							result.add(pList.get(i));
					}
				}
			}
			return result;
		}else{
			String patentHolderName = (String) session.getAttribute("loginName");
			List<Patent> cList = papo.patentIdAll(patentHolderName); 
			List<Patent> pResult = new ArrayList<Patent>();

			for(int i = 0 ; i<cList.size(); i++){
				if(i>pageSu-10){
					if(i<=pageSu){
						pResult.add(cList.get(i));
					}
				}
			}
			return pResult;
		}
		
	}
	@ResponseBody
	@RequestMapping(value="/itemSu", method=RequestMethod.GET)
	public int itemSu(Item item,HttpSession session){
		
		String memberId = (String) session.getAttribute("loginId");
		item.setMemberId(memberId);
		List<Item> iList = itpo.getItemByMemberId(item);
		System.out.println("130번줄 item 양==>"+iList.size());
		return iList.size();
	}
	
	@ResponseBody
	@RequestMapping(value="/itemTable", method=RequestMethod.GET)
	public List<Item> patentTable(HttpSession session,Item item,int pageSu){
		String memberId = (String) session.getAttribute("loginId");
		item.setMemberId(memberId);
		System.out.println("item==>"+item);
		List<Item> iList = itpo.getItemByMemberId(item); 
		System.out.println("147번줄 mList==>"+iList);
		List<Item> result = new ArrayList<Item>();   
		
		
		for(int i = 0 ; i<iList.size(); i++){
			if(i>pageSu-10){
				if(i<=pageSu){
						result.add(iList.get(i));
				}
			}
		}
		System.out.println("아이템==>"+result.size());
		return result;
	}
	@ResponseBody
	@RequestMapping(value ="/overlap", method=RequestMethod.GET)
	public String overlap(String memberId) { // 회원id 폼 request
		System.out.println("memberId==>"+memberId);
		devMember overlapId = dao.overlap(memberId);
		try{
		if(overlapId==null){
			System.out.println("해당아이디 없음");
			return "success";
		}else{
			System.out.println("해당아이디 존재");
			return "fail";
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	
	@RequestMapping(value = "/loginform" ,method=RequestMethod.POST)
	public String login(devMember member, HttpSession session) { // 로그인 폼 request
		System.out.println(member);
		devMember mem = dao.login_member(member);
		if (mem != null) {
			if(!mem.getMemberType().equals("none")){
			session.setAttribute("loginId", mem.getMemberId());
			session.setAttribute("loginName", mem.getMemberName());
			session.setAttribute("loginType", mem.getMemberType());
			System.out.println("로그인 성공 : " + member);
			return "redirect:/";
			}
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
				return "redirect:/member/gosign";
			}
		} catch (Exception e) {
			return "redirect:/member/gosign";
		}

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
			return "redirect:/member/goMypage";
		}
		return "redirect:/member/goMypage";
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
			return "redirect:/member/goMypage";
		}
		}catch (Exception e) {
			return "redirect:/member/goMypage";
		}
		
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
	public String searchpw_member(devMember member) { // 회원pw 폼 request
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
