package com.dev.cloud.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dev.cloud.dao.item_SurveyRepository;
import com.dev.cloud.vo.QuestionTotal;
import com.dev.cloud.vo.Question_Time;
import com.dev.cloud.vo.Search;


@Controller
@RequestMapping("/survey")
public class SurveyController {
	
	
	
	

	@Autowired
	item_SurveyRepository IsRepo;
	
	
	@RequestMapping(value = "/goSurvey_list", method = RequestMethod.GET)
	public String goSurvey_list(HttpSession session, Model model) {
				System.out.println("line 32");
		
				Question_Time qTime=new Question_Time();
				System.out.println("line 35");
				
				ArrayList<QuestionTotal> qTotalList=new ArrayList<>(); 
				qTotalList=IsRepo.selectAllQuestion_TimeById(qTime);
				model.addAttribute("qTotalList", qTotalList);
				
				if(qTotalList.size()!=0){
					for(QuestionTotal q: qTotalList){
						System.out.println(q.toString());
					}
				}
				
		return "/survey/survey_list";
	}
	
	@RequestMapping(value = "/gosurvey_Detail", method = RequestMethod.GET)
	public String gosurvey_Detail( Model model, Question_Time question_Time) {
			
				question_Time.setQuestionTimeNum(question_Time.getQuestionTimeNum());
				IsRepo.getQuestion_TimeByItemNum(question_Time);
				model.addAttribute("question_Time", question_Time);
				System.out.println(question_Time);
		return "/survey/survey_result";
	}
	
	@RequestMapping(value = "/searchSurvey", method = RequestMethod.GET)
	@ResponseBody
	public List<QuestionTotal> searchSurvey( Model model, Search search) {
		System.out.println("line ++66");
		List<QuestionTotal> qtLsist=new ArrayList<>();
		qtLsist=IsRepo.selectBySearchItem(search);
		if(qtLsist.size()==0){
			return qtLsist;
		}
		return qtLsist;
	}
}
