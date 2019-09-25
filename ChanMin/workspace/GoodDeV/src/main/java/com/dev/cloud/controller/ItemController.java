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
import javax.swing.text.Highlighter.HighlightPainter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dev.cloud.dao.HistoryRepository;
import com.dev.cloud.dao.historyMapper;
import com.dev.cloud.dao.itemRepository;
import com.dev.cloud.utill.FileService;
import com.dev.cloud.vo.History;
import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.MTI;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.Total;

@Controller
@RequestMapping("/item")
public class ItemController {
	
	final String uploadPath = "/FileTest";
	
	@Autowired
	itemRepository repo;
	@Autowired
	HistoryRepository hipo;
	
	@RequestMapping(value = "/goItemUpdate", method = RequestMethod.GET)
	public String goItemUpdate(Total total, HttpSession session,Model model) {
		String memberId = (String) session.getAttribute("loginId"); 
		total.setMemberId(memberId);
		
		Total his =null;
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd (E) ");
		Calendar time = Calendar.getInstance();
		String times = format.format(time.getTime());
		
		
		
		
		List<Total> hist =  hipo.historyIdDetail(total);
		System.out.println("62번줄hist==>"+hist);
		for(int i=0; i<hist.size();i++){
			his= hist.get(0);
		}
		Total it = repo.goItemDetail(total);
		
		System.out.println("58번줄==>"+it);
		System.out.println("64번줄his==>"+hist);
		model.addAttribute("his",his);
		model.addAttribute("it",it);
		model.addAttribute("time", times);
		
		return "/item/item_update";
	}
	
	@RequestMapping(value = "/goItemDetail", method = RequestMethod.GET)
	public String goItemDetail(HttpSession session ,Total total,Model model) {
		System.out.println("51번줄==>"+total);
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd (E) ");
		
		Calendar time = Calendar.getInstance();
		
		String times = format.format(time.getTime());
		
		
		String memberId = (String) session.getAttribute("loginId"); 
		
		total.setMemberId(memberId);
		String a = "";
		String b = "";
		String c = "";
		String d = "";
		Total it = repo.goItemDetail(total);
		String lcm = it.getItemImagename();
		
		String [] array = lcm.split("@");
		
		for(int i=0;i<array.length;i++){
			a = array[0];
			b = array[1];		
		}
		
		String tt = a+",  "+b;
		if(!c.equals("")&&!d.equals("")){
			String yy = c+",  "+d;
			model.addAttribute("yy",yy);
		}
		
		model.addAttribute("tt",tt);
		
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
	
	@RequestMapping(value = "/goItemDelete", method = RequestMethod.GET)
	public String goItemDelete(HttpSession session,Total total,Model model) {
		String memberId = (String) session.getAttribute("loginId");
		total.setMemberId(memberId);
		System.out.println("104번줄==>"+total);
		int result = repo.deleteItem(total);
		try{
		if(result==1){
			System.out.println("삭제성공");
			return "redirect:/member/goMypage";
		}else{
			System.out.println("삭제실패");
			return "redirect:/member/goMypage";
		}
		}catch (Exception e) {
			e.printStackTrace();
			return "redirect:/member/goMypage";
		}
		
	}
	
	@RequestMapping(value = "/goItemHistory", method = RequestMethod.GET)
	public String goItemHistory(HttpSession session,Total total,Model model) {
		String memberId = (String) session.getAttribute("loginId");
		total.setMemberId(memberId);
		
		List<Total> hList = hipo.selectAllHistory(total);
		
		model.addAttribute("hList", hList);	
		
		return "item/item_history";
	}
	
	
	@RequestMapping(value = "/goItemUpdateProcess", method = RequestMethod.POST)
	public String goItemUpdateProcess(MultipartFile upload,MultipartFile upload1,Total total, HttpSession session) {
		System.out.println("upload==>"+upload+ "upload1==>"+upload1);
		int result =0;
		int re = 0;
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd (E) ");
		
		Calendar time = Calendar.getInstance();
		
		String times = format.format(time.getTime());
		String memberId = (String) session.getAttribute("loginId"); 
		total.setHistoryDate(times);
		total.setMemberId(memberId);
		total.setItemContent(total.getComments());
		List<Total> hist = repo.getIdDe(total);
		System.out.println("142번hist==>"+hist);
		System.out.println("142번줄total==>"+total);
		Total it = repo.goItemDetail(total);
		for(Total to : hist){
			if(to.getItemNum()==total.getItemNum()){
				total.setItemNum(to.getItemNum());
				System.out.println("208번줄his==>"+total);
				total.setComments(total.getItemContent());
				total.setItemVersion(total.getItemVersion()+1);
				re = hipo.insertHistory(total);
			}
		}
		if(upload==null||upload1==null){
			
			 System.out.println("108번 여기요!!");
			 result = repo.updateItem(total);
			 
		}else if(upload.getSize() == 0 || upload.isEmpty()||upload1.getSize() == 0 || upload1.isEmpty()){
			
			System.out.println("111번 여기요!!"); 
			result = repo.updateItem(total);
			
		}else{
			  System.out.println("114번줄it==>"+it);
			  FileService.deleteFile(uploadPath + "/" + it.getSaveItemImage());
			  FileService.deleteFile(uploadPath + "/" + it.getSaveDocumentFilename());
		         String savedname = FileService.saveFile(upload, uploadPath);
		         String savedname1 = FileService.saveFile(upload1, uploadPath);
		         total.setItemImagename(upload.getOriginalFilename()+"@"+upload1.getOriginalFilename());
		         total.setSaveItemImage(savedname+"@"+savedname1);	
		         //total.setDocumentFilename();
		         //total.setSaveDocumentFilename(savedname1);
		         result = repo.updateItem(total);
		}
		
		System.out.println("124번줄==>"+total);
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
	public String goItemWriteProcess(MultipartFile upload,MultipartFile upload1,Total total, HttpSession session) {
		int re =0;
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd (E) ");
		
		Calendar time = Calendar.getInstance();
		
		String times = format.format(time.getTime());
		String memberId= (String) session.getAttribute("loginId");
		total.setMemberId(memberId);
		System.out.println("item==>"+total);
		total.setItemVersion(1);
		total.setHistoryDate(times);
		total.setComments("");
		try {
			String itemImage = upload.getOriginalFilename();
			
			String saveitemImage = FileService.saveFile(upload, uploadPath);
			
			String documentFilename = upload1.getOriginalFilename();
			String saveDocumentFilename = FileService.saveFile(upload1, uploadPath);
			total.setItemImagename(itemImage+"@"+documentFilename);
			total.setSaveItemImage(saveitemImage+"@"+saveDocumentFilename);	
		//	total.setDocumentFilename(documentFilename);
		//	total.setSaveDocumentFilename(saveDocumentFilename);
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		}
		
		int result = repo.insertItem(total); 
		System.out.println("203==>"+total);
		List<Total> hist = repo.getIdDe(total);
		for(Total to : hist){
			if(to.getItemName().equals(total.getItemName())){
				total.setItemNum(to.getItemNum());
				System.out.println("208번줄his==>"+total);
			 
				 re = hipo.insertHistory(total);
			}
		}
		try{
		if(result==1&&re==1){
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

