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
		
		//admin 진입 가로채기		
		if (customer.getCustid().equals("admin") && customer.getPassword().equals("admin")) {
			//admin 계정 등록한채로 진입
			return 100;
		}	//admin 진입 

		result =rep.loginCustomer(customer);
		session.setAttribute("loginName", customer.getName());
		session.setAttribute("loginId", customer.getCustid());

		
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
	public String logout(Customer customer , Model model, HttpSession session) {
			session.invalidate();
		return "index";
	}
	
	@RequestMapping(value = "/searchinfo", method = RequestMethod.GET)
	@ResponseBody
	public String searchinfo(Customer customer) {

		if (customer.getCustid() == null) {
			Customer cus = rep.find_id(customer);
			if (cus != null) {
				System.out.println(cus);
				String aa = cus.getCustid();
				return aa;
			} else {

				return "fail";
			}
		} else {
			System.out.println(customer);
			Customer cus = rep.find_pw(customer);
			return cus.getPassword();
		}

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

