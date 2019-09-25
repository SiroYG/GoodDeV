package com.dev.cloud.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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

import com.dev.cloud.dao.PatentRepository;
import com.dev.cloud.dao.PatentSubRepository;
import com.dev.cloud.dao.PtiRepository;
import com.dev.cloud.vo.PTI;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.Patentsub;
import com.dev.cloud.vo.PdpVo;

@Controller
@RequestMapping("/patent")
public class PatentController {
	
	final String uploadPath = "/PatentSub";
	
	@Autowired
	PatentRepository papo;
	@Autowired
	PatentSubRepository supo;
	@Autowired
	PatentSubRepository pspo;
	@Autowired
	PtiRepository ptpo;
	
	
	//Patent 분류, 특허명, 특허번호 / devMember patentHoldName, memberId,  / PTI 신청날짜
	@RequestMapping(value = "/patentUseList", method = RequestMethod.GET)
	public String patentUseList(HttpSession session, Model model) { //split을 사용해서 파일을 두가지로 나눈다 => downLoad => file upload(ajax 처리)
		String name = (String) session.getAttribute("loginName");
		List<PdpVo> pList =  papo.pdpIdGo(name); //Patent 나머지 와  devMember 신청자 이름, PTI의 신청날짜 합친 VO 필요 
		
		
		System.out.println("43번줄pList==>"+pList);
		
		System.out.println("29번줄==>"+pList.size());
		model.addAttribute("pList",pList);
		return "/patent/patent_use_list";
	}
	
	@ResponseBody
	@RequestMapping(value = "/sePti", method = RequestMethod.GET)
	public PTI sePti(int PTI_seq) { 
		
		PTI pti = ptpo.selectPti(PTI_seq);
		System.out.println("62번줄==>"+pti);
		
		return pti;
	}

	@ResponseBody
	@RequestMapping(value = "/sePatent", method = RequestMethod.GET)
	public Patentsub sePatent(String patentNum) { 
		
		Patentsub patent = pspo.selectSub(patentNum);
		System.out.println("59번줄==>"+ patent);
		
		return patent;
	}
	
	@ResponseBody
	@RequestMapping(value = "/down", method = RequestMethod.GET, produces="application/text; charset=utf8")
	public String down(String patentNum) { 
		String result = "";
		Patentsub patent = pspo.selectSub(patentNum);
		System.out.println("59번줄==>"+ patent);
		String sb = patent.getReferenceFilename();
		String [] array = sb.split("@");
		for(int i=0;i<array.length;i++){
			result = array[0];
		}
		
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/down1", method = RequestMethod.GET, produces="application/text; charset=utf8")
	public String down1(String patentNum) { 
		String result = "";
		Patentsub patent = pspo.selectSub(patentNum);
		System.out.println("59번줄==>"+ patent);
		String sb = patent.getReferenceFilename();
		String [] array = sb.split("@");
		for(int i=0;i<array.length;i++){
			result = array[1];
		}
		
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/download" , method= RequestMethod.GET)
	public Patentsub download(String patentNum, HttpServletResponse response){
		System.out.println("112번줄==>"+patentNum);
		Patentsub patent = pspo.selectSub(patentNum);
		System.out.println("113번줄patent==>"+patent);
		String referenceFilename = "";
		String saveReferenceFilename = "";
		String sp = patent.getReferenceFilename();
		String sp1 = patent.getSaveReferenceFilename();
		String [] array = sp.split("@");
		String [] ay = sp1.split("@");
		for(int i = 0;i<array.length;i++){
			referenceFilename = array[0];
		}
		System.out.println("93번줄referenceFilename==>"+referenceFilename);
		
		try {
			referenceFilename = URLEncoder.encode(referenceFilename, "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		response.setHeader("Content-Disposition","attachment;filename="+referenceFilename);
		
		File file = new File("D:/3DP/");
		try{
			ServletOutputStream sos = response.getOutputStream();
			FileCopyUtils.copy(new FileInputStream(file), sos);
		}catch (Exception e) {
			
		}
		for(int i = 0;i<array.length;i++){
			saveReferenceFilename = ay[0];

		}
		System.out.println("130번줄saveReferenceFilename==>"+saveReferenceFilename);
		String fullPath = uploadPath+"/"+ saveReferenceFilename;

		FileInputStream fis =null;
		ServletOutputStream sos = null;
		
		
		try {
			fis = new FileInputStream(fullPath);
			sos = response.getOutputStream();
			
			FileCopyUtils.copy(fis, sos);
			
			fis.close();
			sos.close();	
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	@ResponseBody
	@RequestMapping(value="/download1" , method= RequestMethod.GET)
	public Patentsub download1(String patentNum, HttpServletResponse response){
		System.out.println("154번줄patentNum==>"+patentNum);
		Patentsub patent = pspo.selectSub(patentNum);
		System.out.println("154번줄patent==>"+patent);

		String referenceFilename = "";
		String saveReferenceFilename  = "";
		String sp = patent.getReferenceFilename();
		String sp1 = patent.getSaveReferenceFilename();
		String [] ay = sp1.split("@");
		String [] array = sp.split("@");
		for(int i = 0;i<array.length;i++){
			referenceFilename = array[1];
		}
		System.out.println("165번 referenceFilename1==>"+referenceFilename);
		response.setHeader("Content-Disposition","attachment;filename="+referenceFilename);
		for(int i = 0;i<array.length;i++){
			saveReferenceFilename = ay[1];
		}
		System.out.println("saveReferenceFilename1==>"+saveReferenceFilename);
		String fullPath = uploadPath+"/"+ saveReferenceFilename;
		
		
		FileInputStream fis =null;
		ServletOutputStream sos = null;
		
		try {	
			fis = new FileInputStream(fullPath);
			sos = response.getOutputStream();
	
			FileCopyUtils.copy(fis, sos);
			
			fis.close();
			sos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	
	
}
