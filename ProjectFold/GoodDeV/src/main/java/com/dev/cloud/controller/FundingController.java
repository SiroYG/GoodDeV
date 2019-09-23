package com.dev.cloud.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dev.cloud.dao.boardRepository;
import com.dev.cloud.utill.FileService;
import com.dev.cloud.utill.PageNavigator;
import com.dev.cloud.vo.Board;

@Controller
@RequestMapping("/funding")
public class FundingController {

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
	@RequestMapping(value = "/gofunding", method = RequestMethod.GET)
	public String gofunding() { // 홈이동 (리다이렉트)
		return "/funding/funding_list";
	}
	
	@RequestMapping(value = "fundingListForm", method = RequestMethod.GET)
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

		return "/funding/funding_list";
	}


	@RequestMapping(value = "fundingDetail", method = RequestMethod.GET)
	public String boardDetail(int boardNum, Model model) {

		System.out.println("boardNum => " + boardNum);
		Board board = dao.selectOne(boardNum);
		model.addAttribute("board", board);
		System.out.println(board);
		return "/board/Board_Detail";
	}
	

}
