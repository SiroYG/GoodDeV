package com.dev.cloud.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dev.cloud.dao.patentRepository;
import com.dev.cloud.vo.Patent;

@Controller
public class IndexController {
	
	@Autowired
	patentRepository pRepo;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		ArrayList<Patent> pList=new ArrayList<Patent>();	
		Patent patent=new Patent();
		pList=pRepo.patentAll();
		System.out.println("zz"+pList);
		if(pList!=null){
			System.out.println(pList.size()+"<<=pList사이즈");

		}
		patent.setPatenttype("patenttype1");
		patent.setPatentName("영상");
		patent.setSearchItem("patentName");
		System.out.println(patent);
		pList=pRepo.searchPatent(patent);
		if(pList!=null){
			System.out.println(pList.size()+"<<=pList사이즈");

		}
		
		return "index";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
	
		return "index";
	}
	
	
	
}
