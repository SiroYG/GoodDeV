package com.dev.cloud.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dev.cloud.dao.itemRepository;
import com.dev.cloud.utill.FileService;
import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.MTI;
import com.dev.cloud.vo.Patent;

@Controller
@RequestMapping("/item")
public class ItemController {
	
	final String uploadPath = "/FileTest";
	
	@Autowired
	itemRepository repo;
	
	
	@RequestMapping(value = "/goItemUpdate", method = RequestMethod.GET)
	public String goItemUpdate(Item item, HttpSession session,Model model) {
		String memberId = (String) session.getAttribute("loginId"); 
		item.setMemberId(memberId);
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd (E) ");
		Calendar time = Calendar.getInstance();
		
		String times = format.format(time.getTime());
		
		
		
		item.setMemberId(memberId);
		
		Item it = repo.goItemDetail(item);
		
		System.out.println("58번줄==>"+it);
		model.addAttribute("it",it);
		model.addAttribute("time", times);
		
		return "/item/item_update";
	}
	
	@RequestMapping(value = "/goItemDetail", method = RequestMethod.GET)
	public String goItemDetail(HttpSession session ,Item item,Model model) {
		System.out.println("51번줄==>"+item);
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd (E) ");
		
		Calendar time = Calendar.getInstance();
		
		String times = format.format(time.getTime());
		
		
		String memberId = (String) session.getAttribute("loginId"); 
		
		item.setMemberId(memberId);
		
		Item it = repo.goItemDetail(item);
		
		System.out.println("58번줄==>"+it);
		model.addAttribute("it",it);
		model.addAttribute("time", times);
		return "/item/item_Detail";
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
	public String goItemUpdateProcess(MultipartFile upload,MultipartFile upload1,Item item, HttpSession session) {
		String memberId = (String) session.getAttribute("loginId"); 
		item.setMemberId(memberId);
		System.out.println(item);
		Item it = repo.goItemDetail(item);
		if(upload==null||upload1==null){
			int result = repo.updateItem(item);
		}else if(upload.getSize() == 0 || upload.isEmpty()||upload1.getSize() == 0 || upload1.isEmpty()){
			int result = repo.updateItem(item);
		}else{
			
			  FileService.deleteFile(uploadPath + "/" + it.getSaveItemImage());
			  FileService.deleteFile(uploadPath + "/" + it.getDocumentFilename());
		         String savedname = FileService.saveFile(upload, uploadPath);
		         String savedname1 = FileService.saveFile(upload1, uploadPath);
		         item.setItemImagename(savedname);
		         item.setSaveItemImage(upload.getOriginalFilename());	
		         item.setDocumentFilename(savedname1);
		         item.setSaveDocumentFilename(upload1.getOriginalFilename());
		}
		
		int result = repo.updateItem(item);
		try{
		if(result==1){
			System.out.println("item 수정성공");
			return "redirect:/member/goMypage";
		}else{
			System.out.println("item 수정 실패");
			return "redirect:/item/goItemDetail";
		}
		} catch (Exception e) {
			return "redirect:/item/goItemDetail";
		}
		
	}
	@RequestMapping(value = "/goItemWriteProcess", method = RequestMethod.POST)
	public String goItemWriteProcess(MultipartFile upload,MultipartFile upload1,Item item, HttpSession session) {
		String memberId= (String) session.getAttribute("loginId");
		item.setMemberId(memberId);
		System.out.println("item==>"+item);
		
		try {
			String itemImage = upload.getOriginalFilename();
			String saveitemImage = FileService.saveFile(upload, uploadPath);
			String documentFilename = upload1.getOriginalFilename();
			String saveDocumentFilename = FileService.saveFile(upload1, uploadPath);
			item.setItemImagename(itemImage);
			item.setSaveItemImage(saveitemImage);	
			item.setDocumentFilename(documentFilename);
			item.setSaveDocumentFilename(saveDocumentFilename);
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		}

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

