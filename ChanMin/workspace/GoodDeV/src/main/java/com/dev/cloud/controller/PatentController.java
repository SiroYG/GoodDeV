package com.dev.cloud.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dev.cloud.dao.PatentRepository;
import com.dev.cloud.vo.Patent;

@Controller
@RequestMapping("/patent")
public class PatentController {
	
	@Autowired
	PatentRepository papo;
	
	
	@RequestMapping(value = "/patentUseList", method = RequestMethod.GET)
	public String patentUseList(HttpSession session, Model model) { //split을 사용해서 파일을 두가지로 나눈다 => downLoad => file upload(ajax 처리)
		String name = (String) session.getAttribute("loginName");
		List<Patent> pList =  papo.patentIdAll(name);  //Patent 나머지 와  devMember 신청자 이름, PTI의 신청날짜 합친 VO 필요 
		System.out.println("28번줄pList==>"+pList);
		System.out.println("29번줄==>"+pList.size());
		model.addAttribute("pList",pList);
		return "/patent/patent_use_list";
	}
	
	
	
	
}
