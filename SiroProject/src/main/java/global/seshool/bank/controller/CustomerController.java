package global.seshool.bank.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.seshool.bank.dao.CustomerRepository;
import global.seshool.bank.vo.Customer;

@Controller
@RequestMapping("/Customer")
public class CustomerController {
	
	@Autowired
	CustomerRepository rep;
	
	@RequestMapping(value = "/join_pop", method = RequestMethod.GET)
	public String goidCheck(Locale locale, Model model) {
		return "/member/join_pop";
	}
	
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	@ResponseBody
	public int join(Customer customer ) {
		System.out.println("회원가입 : " + customer);
		int result=0;
		result =rep.insertCustomer(customer);
		if (result>0) {
			System.out.println("성공");
			return result;
		}
		else {
			System.out.println("실패");
			return result;
		}
	}
	
	@RequestMapping(value="/login" , method =RequestMethod.POST)
	@ResponseBody
	public int loginCustomer(Customer customer,Model model, HttpSession session ) {
		System.out.println("로그인 : " + customer.getCustid()+customer.getPassword());
		int result=0;
		result =rep.loginCustomer(customer);
		session.setAttribute("loginName", customer.getCustid());
		session.setAttribute("loginId", customer.getName());
		if (result>0) {
			System.out.println("성공");
			return result;
		}
		else {
			System.out.println("실패");
			return result;
		}
	}
	
	

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
			session.invalidate();
		return "index";
	}
	
	
	@RequestMapping(value="/idcheck", method=RequestMethod.GET)
	public boolean searchCustomer(String checkId) {
		boolean result =false;
		System.out.println("idcheck진");
		result = rep.searchCustomer(checkId);
		if (result==true)
		{
			return true;
		}
		return result;
	}
	
}

