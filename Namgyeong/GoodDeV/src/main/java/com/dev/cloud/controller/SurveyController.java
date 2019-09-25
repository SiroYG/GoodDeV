package com.dev.cloud.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dev.cloud.dao.boardRepository;
import com.dev.cloud.dao.item_SurveyRepository;
import com.dev.cloud.utill.PageNavigator;
import com.dev.cloud.vo.Board;
import com.dev.cloud.vo.Question_Time;

@Controller
@RequestMapping("/survey")
public class SurveyController {
	@Autowired
	item_SurveyRepository dao;

	final String uploadPath = "/uploadfile";

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() { //LIST
		return "/survey/survey_list";
	}
	@RequestMapping(value = "/surveyform", method = RequestMethod.GET)
	public String surveyform() { // SURVEYFORM
		return "/survey/survey_form";
	}
	
	@RequestMapping(value = "surveyListForm", method = RequestMethod.GET)
	public String surveyListForm(@RequestParam(value = "searchItem", defaultValue = "questionTitle") String searchItem,
			@RequestParam(value = "searchWord", defaultValue = "") String searchWord,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, Model model) {

		// 게시글 전체 개수 조회
		int totalRecordCount = dao.getBoardCount(searchItem, searchWord);
		System.out.println(totalRecordCount);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		System.out.println(navi.getStartRecord());
		List<Question_Time> list = dao.selectAll(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		System.out.println(list.size());
		for (Question_Time vo : list) {
			System.out.println(vo);
		}

		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);

		return "/survey/survey_list";
	}

	@RequestMapping(value = "surveyDetail", method = RequestMethod.GET)
	public String surveyDetail(int questionTimeNum, Model model) {

		System.out.println("Question_Time => " + questionTimeNum);
		Question_Time Question_Time = dao.selectOne(questionTimeNum);
		model.addAttribute("Question_Time", Question_Time);
		System.out.println(Question_Time);
		return "/survey/survey_Detail";
	}
	
	
}
