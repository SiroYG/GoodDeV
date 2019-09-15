package com.dev.cloud.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dev.cloud.dao.boardRepository;
import com.dev.cloud.utill.PageNavigator;
import com.dev.cloud.vo.Board;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	boardRepository dao;

	final String uploadPath = "/uploadfile";

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String gomain() { // 홈이동
		return "/index";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String main() { // 홈이동 (리다이렉트)
		return "redirect:/";
	}

	@RequestMapping(value = "/boardhome", method = RequestMethod.GET)
	public String boardhome() { // 홈이동 (리다이렉트)
		return "/board/Board_list";
	}
	@RequestMapping(value = "/gowrite", method = RequestMethod.GET)
	public String gowrite() { // 홈이동 (리다이렉트)
		return "/board/Board_Write";
	}
	

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping(value = "boardListForm", method = RequestMethod.GET)
	public String boardListForm(@RequestParam(value = "searchItem", defaultValue = "title") String searchItem,
			@RequestParam(value = "searchWord", defaultValue = "") String searchWord,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, Model model) {

		// 게시글 전체 개수 조회
		int totalRecordCount = dao.getBoardCount(searchItem, searchWord);
		System.out.println(totalRecordCount);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		System.out.println(navi.getStartRecord());
		List<Board> list = dao.selectAll(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		System.out.println(list.size());
		for (Board vo : list) {
			System.out.println(vo);
		}

		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);

		return "/board/Board_list";
	}

}
