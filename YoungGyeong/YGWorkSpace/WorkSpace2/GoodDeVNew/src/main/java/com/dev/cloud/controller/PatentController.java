package com.dev.cloud.controller;


import java.io.FileInputStream;
import java.io.IOException;

import java.io.UnsupportedEncodingException;

import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dev.cloud.dao.PatentRepository;
import com.dev.cloud.dao.PatentSubRepository;
import com.dev.cloud.dao.PtiRepository;
import com.dev.cloud.dao.documentRepository;
import com.dev.cloud.dao.itemRepository;
import com.dev.cloud.utill.FileService;
import com.dev.cloud.vo.Document;
import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.PTI;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.Patentsub;
import com.dev.cloud.vo.PdpVo;



@Controller
@RequestMapping("/patent")
public class PatentController {
	
	final String uploadPath = "/PatentSub";
	
	@Autowired
	itemRepository itpo;
	@Autowired
	PatentRepository papo;
	@Autowired
	PatentSubRepository supo;
	@Autowired
	PatentSubRepository pspo;
	@Autowired
	PtiRepository ptpo;
	@Autowired
	documentRepository dopo;
	
	
	//Patent 분류, 특허명, 특허번호 / devMember patentHoldName, memberId,  / PTI 신청날짜
	@RequestMapping(value = "/patentUseList", method = RequestMethod.GET)
	public String patentUseList(HttpSession session, Model model) { //split을 사용해서 파일을 두가지로 나눈다 => downLoad => file upload(ajax 처리)
		String name = (String) session.getAttribute("loginName");
		List<PdpVo> pList =  papo.pdpIdGo(name); //Patent 나머지 와  devMember 신청자 이름, PTI의 신청날짜 합친 VO 필요 
		
		System.out.println("66번줄pList==>"+pList);
		
		System.out.println("68번줄==>"+pList.size());
		model.addAttribute("pList",pList);
		
		return "/patent/patent_use_list";
	}
	

	
	@ResponseBody
	@RequestMapping(value = "/permitionForm", method = RequestMethod.POST)
	public String permitionForm(MultipartFile upload, PdpVo pd) { 
		System.out.println("76번줄==>"+upload);	//2가지  (1) document테이블에 documentFilename,saveDocumentFilename update된다. (2) PTI의 contract Yes로 바뀜 
		System.out.println("77번줄--==>"+pd);
		int ptiResult = 0;
		int docuResult = 0;
		int itemResult = 0;
		
		
		System.out.println("107번==>"+pd);
		FileService.deleteFile(uploadPath+"/"+pd.getSaveDocumentFilename());
		String documentFilename = upload.getOriginalFilename();
		String saveDocumentFilename = FileService.saveFile(upload, uploadPath); 
		pd.setDocumentFilename(documentFilename);
		pd.setSaveDocumentFilename(saveDocumentFilename);
		docuResult = dopo.updateDocu(pd); // document테이블에 documentFilename < == 
		itemResult  = itpo.pdpUpdate(pd);
		

		if(docuResult==1&&itemResult==1){
				pd.setContract("Yes");	
				ptiResult = ptpo.updatePTI(pd); // PTI의 contract Yes로 바뀜     <== pti_seq의 변화
			}
		System.out.println("118번줄result==>"+ptiResult);
			 if(ptiResult==1){
			 	return "success";
			 }else{
			 	return "false";
			 }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
	}
	
	@ResponseBody
	@RequestMapping(value = "/down", method = RequestMethod.GET, produces="application/text; charset=utf8")
	public String down(int itemNum) { 
		String result = "";
		Item item = itpo.selectItemNum(itemNum);
		
		String sb = item.getDocumentFilename();
		String [] array = sb.split("@");
		for(int i=0;i<array.length;i++){
			result = array[0];
		}
		
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/down1", method = RequestMethod.GET, produces="application/text; charset=utf8")
	public String down1(int itemNum) { 
		String result = "";
		Item item = itpo.selectItemNum(itemNum);
		
		String sb = item.getDocumentFilename();
		String [] array = sb.split("@");
		for(int i=0;i<array.length;i++){
			result = array[1];
		}
		
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/download" , method= RequestMethod.GET)
	public Item download(int itemNum, HttpServletResponse response){
		System.out.println("164번줄==>"+itemNum);
		Item item = itpo.selectItemNum(itemNum);
		System.out.println("166번줄patent==>"+item);
		String documentFilename = "";
		String saveDocumentFilename = "";
		String sp = item.getDocumentFilename();
		String sp1 = item.getSaveDocumentFilename();
		String [] array = sp.split("@");
		String [] ay = sp1.split("@");
		for(int i = 0;i<array.length;i++){
			documentFilename = array[0];
		}
		System.out.println("93번줄referenceFilename==>"+documentFilename);
		response.setHeader("Content-Disposition","attachment;filename="+documentFilename);
		for(int i = 0;i<array.length;i++){
			saveDocumentFilename = ay[0];

		}
		System.out.println("130번줄saveReferenceFilename==>"+saveDocumentFilename);
		String fullPath = uploadPath+"/"+ saveDocumentFilename;

		FileInputStream fis =null;
		ServletOutputStream sos = null;
		
		
		try {
			fis = new FileInputStream(fullPath);
			sos = response.getOutputStream();
			
			FileCopyUtils.copy(fis, sos);
			
			fis.close();
			sos.flush();
			sos.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/*@GetMapping(value="/download" , produces=MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> download(int itemNum){
	System.out.println("154번줄patentNum==>"+itemNum);
		Item item = itpo.selectItemNum(itemNum);
		System.out.println("154번줄patent==>"+item);
		String documentFilename = "";
		String saveDocumentFilename  = "";
		String sp = item.getDocumentFilename();
		String sp1 = item.getSaveDocumentFilename();
		String [] array = sp.split("@");
		String [] ay = sp1.split("@");
		
		for(int i = 0;i<array.length;i++){
			documentFilename = array[0];
		}
		for(int i = 0;i<array.length;i++){
			saveDocumentFilename = ay[0];
		}
		System.out.println("252번 documentFilename==>"+documentFilename);
		System.out.println("253번 saveDocumentFilename==>"+saveDocumentFilename);
		
		
		String fullPath = uploadPath+"/"+ saveDocumentFilename;
		Resource resource = new FileSystemResource(fullPath);
		
		HttpHeaders headers = new HttpHeaders();
		try{
			String doc = new String(documentFilename.getBytes("ISO-8859-1"),"UTF-8");
			headers.add("Content-Disposition", "attachment; filename=\""+documentFilename+"\"");
			headers.add("Content-Transfer-Encoding", "binary;");
			headers.add("Pragma", "no-cache;");

			headers.add("Expires", "-1;");
		}catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<Resource>(resource,headers,HttpStatus.OK);
	}*/
	
	
	@GetMapping(value="/download1"  ,produces=MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> download1(HttpServletResponse response ,int itemNum){
	System.out.println("154번줄patentNum==>"+itemNum);
		Item item = itpo.selectItemNum(itemNum);
		System.out.println("154번줄patent==>"+item);
		String documentFilename = "";
		String saveDocumentFilename  = "";
		String sp = item.getDocumentFilename();
		String sp1 = item.getSaveDocumentFilename();
		String [] ay = sp1.split("@");
		String [] array = sp.split("@");
		for(int i = 0;i<array.length;i++){
			documentFilename = array[1];
		}
		for(int i = 0;i<array.length;i++){
			saveDocumentFilename = ay[1];
		}
		
		System.out.println("252번 documentFilename==>"+documentFilename);
		System.out.println("253번 saveDocumentFilename==>"+saveDocumentFilename);
		
		
		String fullPath = uploadPath + "/" +saveDocumentFilename;
		Resource resource = new FileSystemResource(fullPath);
		
		HttpHeaders headers = new HttpHeaders();
		try{	
			
			String doc = new String(documentFilename.getBytes("ISO-8859-1"),"UTF-8");
			headers.add("Content-Disposition", "attachment; filename=\""+documentFilename+"\";");
			//response.setContentType("application/download; UTF-8");
			//headers.add("Content-Transfer-Encoding", "binary;");

			//headers.add("Pragma", "no-cache;");

			//headers.add("Expires", "-1;");
		}catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Resource>(resource,headers,HttpStatus.OK);
	}
	
/*	@ResponseBody
	@RequestMapping(value="/download1" , method= RequestMethod.GET)
	public Item download1(int itemNum, HttpServletResponse response){
	System.out.println("154번줄itemNum==>"+itemNum);
		Item item = itpo.selectItemNum(itemNum);
		System.out.println("154번줄patent==>"+item);
		String documentFilename = "";
		String saveDocumentFilename  = "";
		String sp = item.getDocumentFilename();
		String sp1 = item.getSaveDocumentFilename();
		String [] ay = sp1.split("@");
		String [] array = sp.split("@");
		for(int i = 0;i<array.length;i++){
			documentFilename = array[1];
		}
		try {
			String doc = new String(documentFilename.getBytes("ISO-8859-1"),"UTF-8");
			response.setHeader("Content-Disposition","attachment;filename="+ documentFilename);
			//response.setContentType("application/download; UTF-8");
			//response.setHeader("Content-Transfer-Encoding", "binary;");

			//response.setHeader("Pragma", "no-cache;");

			//response.setHeader("Expires", "-1;");
		} catch (UnsupportedEncodingException e1) {
		
			e1.printStackTrace();
		}
		System.out.println("165번 referenceFilename1==>"+documentFilename);
		


		for(int i = 0;i<array.length;i++){
			saveDocumentFilename = ay[1];
		}
		String fullPath = uploadPath+"/"+ saveDocumentFilename;
		
		
		System.out.println("saveReferenceFilename1==>"+saveDocumentFilename);
		
		
		
		FileInputStream fis =null;
		ServletOutputStream sos = null;
		
		try {	
			System.out.println("197번줄!!");
			fis = new FileInputStream(fullPath);
			System.out.println("199번줄==>"+fullPath);
			sos = response.getOutputStream();
			System.out.println("201번줄==>"+sos);
			
			FileCopyUtils.copy(fis, sos);
			System.out.println("204번");
			fis.close();
		
			sos.flush();
			sos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}*/

	
	
}
