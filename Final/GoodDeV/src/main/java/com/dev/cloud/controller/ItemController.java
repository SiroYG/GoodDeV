package com.dev.cloud.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dev.cloud.dao.HistoryRepository;
import com.dev.cloud.dao.itemRepository;
import com.dev.cloud.utill.PageNavigator;
import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.Total;


@Controller
@RequestMapping("/item")
public class ItemController {
	
	@Autowired
	itemRepository repo;
	@Autowired
	HistoryRepository hipo;
	
	@RequestMapping(value = "/goItemDetail", method = RequestMethod.GET)
	public String goItemDetail(Item item, Model model) {
		
		 /*Item it = repo.selectOneItem(item);
		
		 model.addAttribute("item",it);*/
		 
		return "/item/item_Detail" ;
	}
	
	@RequestMapping(value = "/goItemHistory", method = RequestMethod.GET)
	public String goItemHistory(@RequestParam(value = "currentPage", defaultValue = "1") 
	int currentPage,HttpSession session,Total total,Model model) {
	
		String memberId = (String) session.getAttribute("loginId");
		total.setMemberId(memberId);
		List<Total> hList = hipo.selectAllHistory(total);
		System.out.println("47번==>"+hList);
		// 추가
		int totalRecordCount = hList.size();
		System.out.println(totalRecordCount);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		model.addAttribute("hList", hList);	
		model.addAttribute("navi", navi);
		return "/item/item_history" ;
	}
	
	@RequestMapping(value = "/goItemUpdate", method = RequestMethod.GET)
	public String goItemUpdate() {
		
		return "/item/item_update";
	}
	
	@RequestMapping(value = "/goItemWrite", method = RequestMethod.GET)
	public String goItemWrite(Model model) {
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd (E) ");
		
		Calendar time = Calendar.getInstance();
		
		String times = format.format(time.getTime());
		
		model.addAttribute("time", times);
		return "/item/item_write";
	}
	
	@RequestMapping(value = "/goItemUpdateProcess", method = RequestMethod.POST)
	public String goItemUpdateProcess() {
		
		return "redirect:/";
	}
	@RequestMapping(value = "/goItemWriteProcess", method = RequestMethod.POST)
	public String goItemWriteProcess(Total item, HttpSession session) {
		
		String memberId= (String) session.getAttribute("loginId");
		item.setMemberId(memberId);
		item.setItemType("통신장비");
		System.out.println("item==>"+item);
		int result = repo.insertItem(item);
		try{
		if(result==1){
			return "redirect:/member/goMypage";
		}else{
			return "redirect:/item/goItemWrite";
		}
		}catch (Exception e) {
			e.printStackTrace();
			return "redirect:/goItemWrite";
		}
	}
}
