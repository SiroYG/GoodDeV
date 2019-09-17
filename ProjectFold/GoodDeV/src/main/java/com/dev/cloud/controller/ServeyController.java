package com.dev.cloud.controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/survey")
public class ServeyController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
			
		return "index";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String gologin() { // 로그인창 이동
		return "/survey/survey_list";
	}
	@RequestMapping(value = "/surveyform", method = RequestMethod.GET)
	public String surveyform() { // 로그인창 이동
		return "/survey/survey_form";
	}
	
	
}
