package com.seschool.bank.action;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.seschool.bank.dao.AccountDAO;
import com.seschool.bank.vo.Account;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("account")
public class AccountAction {
	
	@Autowired
	private AccountDAO dao;
	
	@RequestMapping(value = "haveaccountForm", method = {RequestMethod.POST, RequestMethod.GET})
	public String haveaccountForm() {
		return "/account/haveaccount";
	}
	
	@RequestMapping(value = "addaccount1Form", method = {RequestMethod.POST, RequestMethod.GET})
	public String addaccount1Form() {
		return "/account/addaccount1";
	}
	
	@RequestMapping(value = "addaccount2Form", method = {RequestMethod.POST, RequestMethod.GET})
	public String addaccount2Form() {
		return "/account/addaccount2";
	}
	
	@RequestMapping(value = "addaccount3Form", method = {RequestMethod.POST, RequestMethod.GET})
	public String addaccount3Form() {
		return "/account/addaccount3";
	}
	
	@RequestMapping(value = "accountList", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ArrayList<Account> accountList(Account account, HttpSession session) {
		ArrayList<Account> list = new ArrayList<>();
		System.out.println((String)session.getAttribute("custid"));
		account.setCustid((String)session.getAttribute("custid"));
		
		list = dao.listAccount(account);
		
		return list;
	}
	
	@RequestMapping(value = "insertAccount", method = {RequestMethod.POST, RequestMethod.GET})
	public String insertAccount(Account account, HttpSession session, RedirectAttributes rttr) {
		System.out.println((String)session.getAttribute("custid"));
		
		String id =(String)session.getAttribute("custid");
		String per = "";
		double random =0;
		double plus = 0;
		
		if(account.getAccounttype().equals("checking")){
			account.setCustid(id);
			if(dao.insertAccount(account) ==1){
				rttr.addFlashAttribute("insertAccResult","계좌등록 완료.");
				return "redirect:/account/haveaccountForm";
			}else{
				return "redirect:/account/addaccount1Form";
			}
		} else if(account.getAccounttype().equals("saving")){
			random = Math.random() + 2.0;
			plus = Math.round(random * 100)/100.0;
			
			per = (String.format("%.1f",plus));
			account.setInterest(per);
			account.setCustid(id);
			
			if(dao.insertAccount(account) ==1){
				return "redirect:/account/haveaccountForm";
			}else{
				return "redirect:/account/addaccount2Form";
			}
		} else {
			random = Math.random() + 4.0;
			plus = Math.round(random * 100)/100.0;
			
			per = (String.format("%.1f",plus));
			account.setInterest(per);
			account.setCustid(id);
			if(dao.insertAccount(account) ==1){
				return "redirect:/account/haveaccountForm";
			}else{
				return "redirect:/account/addaccount3Form";
			}
		}
		
		
	}
	
	@RequestMapping(value = "dipositForm", method = {RequestMethod.POST, RequestMethod.GET})
	public String dipositForm(String accountno, Model model) {
		model.addAttribute("accountno",accountno);
		return "/account/deposit";
	}
	
	@RequestMapping(value = "deposit", method = {RequestMethod.POST, RequestMethod.GET})
	public String diposit(Account account) {
		dao.deposit(account);
		
		return "redirect:/account/haveaccountForm";
	}
	
	@RequestMapping(value = "withdrawForm", method = {RequestMethod.POST, RequestMethod.GET})
	public String withdrawForm(String accountno, Model model) {
		model.addAttribute("accountno",accountno);
		return "/account/withdraw";
	}
	
	@RequestMapping(value = "withdraw", method = {RequestMethod.POST, RequestMethod.GET})
	public String withdraw(Account account) {
		dao.withdraw(account);
		return "redirect:/account/haveaccountForm";
	}
	
	@RequestMapping(value = "transferForm", method = {RequestMethod.POST, RequestMethod.GET})
	public String transferForm(String accountno, Model model) {
		model.addAttribute("accountno",accountno);
		return "/account/transfer";
	}
	
	@RequestMapping(value = "transferpop1Form", method = {RequestMethod.POST, RequestMethod.GET})
	public String transferpop1Form(Account account, HttpSession session, Model model) {
		account.setCustid((String)session.getAttribute("custid"));
		
		ArrayList<Account> list = dao.transferList(account);
		
		for(Account acc : list){
			System.out.println(acc);
		}
		
		model.addAttribute("transferList",list);
		
		return "/account/transferpop1";
	}
	
	@RequestMapping(value = "transferpop2Form", method = {RequestMethod.POST, RequestMethod.GET})
	public String transferpop2Form() {
		return "/account/transferpop2";
	}
	
	@RequestMapping(value = "accCheck", method = {RequestMethod.POST, RequestMethod.GET})
	public String accCheck(Account account,HttpSession session, RedirectAttributes rttr) {
		account.setCustid((String)session.getAttribute("custid"));
		System.out.println(account);
		Account result = dao.accCheck(account);
		
		if(result != null){
			rttr.addFlashAttribute("result","ok");
			rttr.addFlashAttribute("accountno",account.getAccountno());
		}else{
			rttr.addFlashAttribute("result","no");
		}
		
		return "redirect:/account/transferpop2Form";
	}
	
	@RequestMapping(value = "transfer", method = {RequestMethod.POST, RequestMethod.GET})
	public String transfer(String withdrawAccNo,String depositAccNo, int balance) {
		Account account1 = new Account(); //출금계좌
		Account account2 = new Account(); //입금계좌
		
		account1.setAccountno(withdrawAccNo);
		account1.setBalance(balance);
		
		account2.setAccountno(depositAccNo);
		account2.setBalance(balance);
		
		dao.transfer(account1, account2);
		
		return "redirect:/account/haveaccountForm";
	}
	
	@RequestMapping(value = "loanForm", method = {RequestMethod.POST, RequestMethod.GET})
	public String loanForm(String accountno, Model model) {
		model.addAttribute("accountno",accountno);
		return "/account/loan";
	}
	
	@RequestMapping(value = "tradelistForm", method = {RequestMethod.POST, RequestMethod.GET})
	public String tradelistForm(String accountno, Model model) {
		model.addAttribute("accountno",accountno);
		return "/account/tradelist";
	}
	
	@RequestMapping(value="/makeno1", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	@ResponseBody
	public String random1(){
		//계좌 번호 랜덤
		Random random = new Random();
		String num = "1234-001-";
		int min = 1; //5자리 지정
        int max = 99999;
		int plus = (int) (Math.random() * (max - min + 1)) + 1;
		String suffix = String.format("%05d", plus); 
		num+=suffix;
		
		Account acc = dao.searchAccount(num);
		if(acc == null) {
			System.out.println("사용 가능 번호 : "+num);
			return num;
		} else {
			return "fail";
		}

	}
	
	@RequestMapping(value="/makeno2", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	@ResponseBody
	public String random2(){
		//계좌 번호 랜덤
		Random random = new Random();
		String num = "1234-002-";
		int min = 1; //5자리 지정
        int max = 99999;
		int plus = (int) (Math.random() * (max - min + 1)) + min;
		String suffix = String.format("%05d", plus); 
		num+=suffix;
		
		Account acc = dao.searchAccount(num);
		if(acc == null) {
			System.out.println("사용 가능 번호 : "+num);
			return num;
		} else {
			return "fail";
		}
	}
	
	
	@RequestMapping(value="/makeno3", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	@ResponseBody
	public String random3(){
		//계좌 번호 랜덤
		Random random = new Random();
		String num = "1234-003-";
		int min = 1; //5자리 지정
        int max = 99999;
		int plus = (int) (Math.random() * (max - min + 1)) + min;
		String suffix = String.format("%05d", plus); 
		num+=suffix;
		
		Account acc = dao.searchAccount(num);
		if(acc == null) {
			System.out.println("사용 가능 번호 : "+num);
			return num;
		} else {
			return "fail";
		}
		
	}
	
}
