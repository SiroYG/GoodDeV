package com.seschool.bank.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.seschool.bank.dao.AdminDAO;
import com.seschool.bank.util.PageNavigator;
import com.seschool.bank.vo.Account;
import com.seschool.bank.vo.Board;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("admin")
public class AdminAction {

	@Autowired
	AdminDAO repo;
	
	@RequestMapping(value = "/adminmain", method = RequestMethod.GET)
	public String adminmain(Locale locale, Model model) {
	
		return "redirect:/admin/ad_boardList";
	}
	@RequestMapping(value = "/adminview", method = RequestMethod.GET)
	public String adminview(Locale locale, Model model) {
	
		return "/admin/adm_answerview";
	}
	@RequestMapping(value = "/adminloan", method = RequestMethod.GET)
	public String adminloan(Locale locale, Model model) {
	
		return "/admin/adm_loan";
	}
	
	//Admin 게시판단 (navigator사용)
	final String uploadPath="/uploadfile";
	
	// 검색, 첫화면
	@RequestMapping(value="/ad_boardList", method=RequestMethod.GET)
	public String AdminboardList(
			@RequestParam(value="searchItem",  defaultValue="title") String searchItem, 
			@RequestParam(value="searchWord",  defaultValue="")      String searchWord, 
			@RequestParam(value="currentPage", defaultValue="1")     int currentPage, Model model) {
	
		// 게시글 전체 개수 조회
		int totalRecordCount = repo.getBoardCount(searchItem, searchWord);
		
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		System.out.println(navi.getStartRecord());
		List<Board> list = repo.selectAll(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		System.out.println(list.size());
		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);
		
		return "admin/adm_answerlist";
	}
	
	
	@RequestMapping(value="/ad_boardDetail", method=RequestMethod.GET)
	public String boardDetail(int boardno, Model model) {
		System.out.println("boardno => " + boardno);
		Board board = repo.selectOne(boardno);
		
		model.addAttribute("board", board);
		System.out.println(board);
		return "admin/adm_answerview";
	}
	
	@RequestMapping(value = "loanlist", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ArrayList<Account> listLoan(Account account, HttpSession session) {
		ArrayList<Account> list = new ArrayList<>();
		
		list = repo.listLoan(account);
		
		return list;
	}
	
	@RequestMapping(value="/loanOK", method=RequestMethod.GET)
	public String loanOK(Account account, Model model) {
		System.out.println("account => " + account);
		repo.loanOK(account);
		return "admin/adm_loan";
	}
	@RequestMapping(value="/loanX", method=RequestMethod.GET)
	public String loanX(Account account, Model model) {
		System.out.println("account => " + account);
		repo.loanX(account);
		return "admin/adm_loan";
	}
	
	@RequestMapping(value = "/qnadelete", method = RequestMethod.GET)
	public String qnadelete(int boardno, Model model) {
		System.out.println("게시글 삭제 "+boardno);
		int result = repo.qnadelete(boardno);
		if (result==1) {
			System.out.println("성공");
			return "redirect:/admin/ad_boardList"; 
		}
	else {
		System.out.println("faile");
		return "redirect:/admin/ad_boardList"; 
	}
	
	
		
	}
	
	
}
