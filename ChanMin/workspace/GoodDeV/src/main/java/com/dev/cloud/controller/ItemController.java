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

import com.dev.cloud.dao.itemRepository;
import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.MTI;
import com.dev.cloud.vo.Patent;

@Controller
@RequestMapping("/item")
public class ItemController {
	
	@Autowired
	itemRepository repo;
	
	@RequestMapping(value = "/goItemDetail", method = RequestMethod.GET)
	public String goItemDetail(Item item, Model model) {
		
		 Item it = repo.selectOneItem(item);
		
		 model.addAttribute("item",it);
		 
		return "/item/item_Detail" ;
	}
	
	@RequestMapping(value = "/goItemUpdate", method = RequestMethod.GET)
	public String goItemUpdate() {
		
		return "/item/item_update";
	}
	
	@RequestMapping(value = "/goItemWrite", method = RequestMethod.GET)
	public String goItemWrite() {
		
		return "/item/item_write";
	}
	
	@RequestMapping(value = "/goItemUpdateProcess", method = RequestMethod.POST)
	public String goItemUpdateProcess() {
		
		return "redirect:/";
	}
	@RequestMapping(value = "/goItemWriteProcess", method = RequestMethod.POST)
	public String goItemWriteProcess(Item item) {
		
		int result = repo.insertItem(item);
		try{
		if(result==1){
			return "redirect:/";
		}else{
			return "redirect:/goItemWrite";
		}
		}catch (Exception e) {
			e.printStackTrace();
			return "redirect:/goItemWrite";
		}
	}
}