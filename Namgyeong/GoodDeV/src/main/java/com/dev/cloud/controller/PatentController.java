package com.dev.cloud.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.dev.cloud.dao.PatentRepository;
import com.dev.cloud.utill.PageNavigator;
import com.dev.cloud.vo.Patent;

@Controller
@RequestMapping("/patent")
public class PatentController {
	@Autowired
	PatentRepository dao;

	final String uploadPath = "/uploadfile";

	@RequestMapping(value = "/patentlist", method = RequestMethod.GET)
	public String patentlist() { //LIST
		return "/patent/patent_use_list";
	}
	
	@RequestMapping(value = "patentlistForm", method = RequestMethod.GET)
	public String patentlistForm(@RequestParam(value = "searchItem", defaultValue = "all") String searchItem,
			@RequestParam(value = "searchWord", defaultValue = "") String searchWord,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, Model model) {

		// 게시글 전체 개수 조회
		int totalRecordCount = dao.getBoardCount(searchItem, searchWord);
		System.out.println(totalRecordCount);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		System.out.println(navi.getStartRecord());
		List<Patent> list = dao.selectAll(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		System.out.println(list.size());
		for (Patent vo : list) {
			System.out.println(vo);
		}

		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);

		return "/patent/patent_use_list";
	}

	@RequestMapping(value = "patentDetail", method = RequestMethod.GET)
	public String patentDetail(int patentNum, Model model) {

		System.out.println("Question_Time => " + patentNum);
		Patent Patent = dao.selectOne(patentNum);
		model.addAttribute("Question_Time", Patent);
		System.out.println(Patent);
		return "/patent/patent_use_Detail";
	}
	
	
}
