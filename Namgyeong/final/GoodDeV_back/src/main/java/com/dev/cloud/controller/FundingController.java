package com.dev.cloud.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dev.cloud.dao.fundingOptionRepository;
import com.dev.cloud.dao.fundingRepository;
import com.dev.cloud.utill.FileService;
import com.dev.cloud.utill.PageNavigator;
import com.dev.cloud.vo.Board;
import com.dev.cloud.vo.Crowdfunding;
import com.dev.cloud.vo.Payment;
import com.dev.cloud.vo.Question_Time;

@Controller
@RequestMapping("/funding")
public class FundingController {

	@Autowired
	fundingOptionRepository dao1;
	@Autowired
	fundingRepository dao;
	
	final String uploadPath = "/uploadfile";

	@RequestMapping(value = "/boardhome", method = RequestMethod.GET)
	public String boardhome() { // 홈이동 (리다이렉트)
		return "/board/Board_list";
	}
	
	@RequestMapping(value = "/gofunding", method = RequestMethod.GET)
	public String gofunding() { // 홈이동 (리다이렉트)
		return "/funding/funding_list";
	}
	
	@RequestMapping(value = "/gofundingform", method = RequestMethod.GET)
	public String gofundingform() { // 홈이동 (리다이렉트)
		return "/funding/funding_form";
	}
	
	@RequestMapping(value = "/gopayment", method = RequestMethod.GET)
	public String gopayment(@RequestParam(value = "itemname", defaultValue = "paymentTest") String itemname ,Model model) { 
		model.addAttribute("itemname",itemname);
		return "/funding/payment";
	}
	
	
	@RequestMapping(value = "fundingListForm", method = RequestMethod.GET)
	public String boardListForm(@RequestParam(value = "searchItem", defaultValue = "fundingTitle") String searchItem,
			@RequestParam(value = "searchWord", defaultValue = "") String searchWord,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, Model model) {
		// 게시글 전체 개수 조회
		int totalRecordCount = dao.getBoardCount(searchItem, searchWord);
		System.out.println(totalRecordCount);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		System.out.println(navi.getStartRecord());
		List<Crowdfunding> list = dao.selectAll(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		System.out.println(list.size());
		for (Crowdfunding vo : list) {
			System.out.println(vo);
		}

		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);

		return "/funding/funding_list";
	}


	@RequestMapping(value = "fundingDetail", method = RequestMethod.GET)
	public String boardDetail(int crowdfundingNum, Model model) {

		System.out.println("funding => " + crowdfundingNum);
		Crowdfunding Crowdfunding = dao.selectOne(crowdfundingNum);
		int percent =(Crowdfunding.getItemCurrecyPrice()*100 / Crowdfunding.getItemGoalPrice());
		System.out.println("퍼센트 : "+percent);
		model.addAttribute("fund", Crowdfunding);
		model.addAttribute("percent",percent);
		
		System.out.println(Crowdfunding);
		return "/funding/funding_Detail";
	}
	
	@RequestMapping(value = "/fundingWrite", method = RequestMethod.POST)
	public String fundingWrite(Crowdfunding Crowdfunding, MultipartFile upload, HttpSession session, RedirectAttributes rttr) {
		System.out.println(upload.getOriginalFilename());
		System.out.println("106번줄==>"+Crowdfunding);
		String memberId = (String) session.getAttribute("loginId");
		Crowdfunding.setMemberId(memberId);
		// 2) FileService 를 사용한 코드
		if (upload != null) {
			String originalfile = upload.getOriginalFilename();
			String savedfile = FileService.saveFile(upload, uploadPath);
			System.out.println(savedfile);
			Crowdfunding.setOriginalFileName(originalfile);
			Crowdfunding.setSavedFileName(savedfile);
		}
		int result = dao.insertBoard(Crowdfunding);
		System.out.println("게시물입력 : " + result);

		return "/funding/funding_list";
	}
	
	@RequestMapping(value = "paymentform", method = {RequestMethod.POST,RequestMethod.GET})
	public String paymentform(Payment payment, Model model) {
		System.out.println("payment => " + payment);
		model.addAttribute("payment", payment);
		return "/funding/payment";
	}
}