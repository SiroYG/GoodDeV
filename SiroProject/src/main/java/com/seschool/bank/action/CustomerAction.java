package com.seschool.bank.action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.seschool.bank.dao.CustomerDAO;
import com.seschool.bank.vo.Customer;

@Controller
public class CustomerAction {
	
	@Autowired
	private CustomerDAO dao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String gomain() {
		return "/index";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String main() {
		return "redirect:/";
	}
	
	@RequestMapping(value = "loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "/member/login";
	}
	
	@RequestMapping(value = "joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "/member/join";
	}
	
	@RequestMapping(value = "findidpwForm", method = RequestMethod.GET)
	public String findidpwForm() {
		return "/member/find_idpw";
	}
	
	@RequestMapping(value = "infoForm", method = {RequestMethod.GET,RequestMethod.POST})
	public String infoForm(String custid, Model model) {
		Customer result = dao.selectCustomer(custid);
		
		model.addAttribute("custinfo",result);
		
		return "/member/info";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "login", method = {RequestMethod.GET, RequestMethod.POST})
	public String login(Customer vo, HttpSession session, RedirectAttributes rttr) {
		Customer result = dao.login(vo);
		
		//admin 진입 가로채기		
		if (vo.getCustid().equals("admin") && vo.getPassword().equals("admin")) {
			//admin 계정 등록한채로 진입
			session.setAttribute("custid", "admin");
			return "redirect:/admin/adminmain";
		}//admin 진입 
		
		if(result != null){
			session.setAttribute("custid", result.getCustid());
			return "redirect:/account/haveaccountForm";
		}else{
			rttr.addFlashAttribute("error","아이디 혹은 비밀번호가 일치하지 않습니다.");
			return "redirect:/";
		}
	}
	
	@RequestMapping(value = "idcheck", method = {RequestMethod.GET, RequestMethod.POST})
	public String idcheck(String custid, RedirectAttributes rttr) {
		System.out.println(custid);
		Customer custinfo = dao.selectCustomer(custid);

		rttr.addFlashAttribute("custid",custid);
		
		if(custinfo != null){
			rttr.addFlashAttribute("result",false);
		}else{
			rttr.addFlashAttribute("result",true);
		}
		
		return "redirect:/joinpopForm";
	}
	
	@RequestMapping(value = "joinpopForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinpopForm() {
		return "/member/join_pop";
	}
	
	@RequestMapping(value = "insertCustomer", method = {RequestMethod.GET, RequestMethod.POST})
	public String insertCustomer(Customer vo) {
		System.out.println(vo);
		int result = dao.insertCustomer(vo);
		
		if(result != 1){
			return "redirect:/joinForm";
		}else{
			return "redirect:/";
		}
	}
	
	@RequestMapping(value = "searchCustomer", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchCustomer(Customer vo, RedirectAttributes rttr) {
		System.out.println(vo);
		
		Customer result = dao.searchCustomer(vo);
		System.out.println(result);
		
		if(result != null){
			rttr.addFlashAttribute("searchvalue", "찾으시는 결과값 : " + result.getPassword());
		}else{
			rttr.addFlashAttribute("searchvalue","해당정보가 존재하지 않습니다.");
		}
		
		return "redirect:/findidpwForm";
	}
	
	@RequestMapping(value = "updateCustomer", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateCustomer(Customer vo, RedirectAttributes rttr) {
		int result = dao.updateCustomer(vo);
		System.out.println(vo);
		if(result == 1){
			rttr.addFlashAttribute("result", "회원정보가 정상적으로 수정되었습니다.");
			return "redirect:/account/haveaccountForm";
		}else{
			rttr.addFlashAttribute("result","오류 : 회원정보 수정중에 문제가 발생했습니다.");
			return "redirect:/infoForm";
		}	
	}
	
	
}
