package com.dev.cloud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dev.cloud.dao.PatentRepository;
import com.dev.cloud.vo.Patent;

@Controller
public class TableController {
	
	@Autowired
	PatentRepository repo;
	
	@ResponseBody
	@RequestMapping(value="/patentTable", method=RequestMethod.GET)
	public List<Patent> patentTable(){
		
		List<Patent> pList = repo.patentAll(); 
		
		return pList;
	}
	
	
	
}
