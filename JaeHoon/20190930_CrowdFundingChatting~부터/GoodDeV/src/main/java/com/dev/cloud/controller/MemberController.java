package com.dev.cloud.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSpinnerUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dev.cloud.dao.PatentSubRepository;
import com.dev.cloud.dao.PtiRepository;
import com.dev.cloud.dao.documentRepository;
import com.dev.cloud.dao.itemRepository;
import com.dev.cloud.dao.memberRepository;
import com.dev.cloud.dao.patentRepository;
import com.dev.cloud.utill.FileService;
import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.ItemDo;
import com.dev.cloud.vo.MTI;
import com.dev.cloud.vo.Pat;
import com.dev.cloud.vo.Patent;
import com.dev.cloud.vo.PatentTotal;
import com.dev.cloud.vo.Patentsub;
import com.dev.cloud.vo.Total;
import com.dev.cloud.vo.devMember;

@Controller
@RequestMapping("/member")
public class MemberController {

	final String uploadPath = "/PatentSub";

	@Autowired
	memberRepository dao;
	@Autowired
	patentRepository papo;
	@Autowired
	itemRepository itpo;
	@Autowired
	PatentSubRepository pspo;
	@Autowired
	documentRepository dopo;
	@Autowired
	PtiRepository ptipo;
	
	@RequestMapping(value = "/gologin", method = RequestMethod.GET)
	public String gologin() { // 로그인창 이동
		return "member/login";
	}

	@RequestMapping(value = "/gosign", method = RequestMethod.GET)
	public String gosign() { // 회원가입창 이동
		return "/member/signin";
	}

	@RequestMapping(value = "/gofindid", method = RequestMethod.GET)
	public String gofindid() {
		return "/member/findid";
	}

	@RequestMapping(value = "/gofindpw", method = RequestMethod.GET)
	public String gofindpw() {
		return "/member/findpw";
	}

	@RequestMapping(value = "/goupdate", method = RequestMethod.GET)
	public String goupdate() {
		return "/member/update";
	}

	@RequestMapping(value = "/godropout", method = RequestMethod.GET)
	public String godropout() {
		return "/member/dropout";
	}

	@RequestMapping(value = "/goMypage", method = RequestMethod.GET)
	public String goMypage() {
		return "/member/Mypage";
	}

	@RequestMapping(value = "/searchGo", method = RequestMethod.GET)
	public String searhGo() {
			
		return "search/search_patent";
	}

	@ResponseBody
	@RequestMapping(value = "/selectPatent", method = RequestMethod.GET)
	public String selectPatent(Patent patent) {
		System.out.println("101번줄==>" + patent);
		Patent pat = null;
		if (patent.getPatentNum() != null) {
			pat = papo.selectPatent(patent);
			System.out.println("103번줄==>" + pat);
		}
		return pat.getPatentNum();
	}

	@ResponseBody
	@RequestMapping(value = "/patentSu", method = RequestMethod.GET)
	public int patentSu() {
		// String memberId = session.getAttribute("loginId");
		List<Patent> pList = papo.patentAll();
		System.out.println("78번줄 특허 양==>" + pList.size());
		return pList.size();
	}

	@ResponseBody
	@RequestMapping(value = "/patentTable", method = RequestMethod.GET)
	public List<Patent> patentTable(Pat pat, HttpSession session, int pageSu) {
		System.out.println("106번줄 pat==>" + pat);

		if (pat.getPatentType() != null) {
			List<Patent> pList = papo.searchPatent(pat);
			System.out.println("110번줄 pList사이즈==>" + pList.size());
			List<Patent> result = new ArrayList<Patent>();

			for (int i = 0; i < pList.size(); i++) {
				if (i > pageSu - 10) {
					if (i <= pageSu) {
						result.add(pList.get(i));
					}
				}
			}

			return result;
		} else {
			String patentHolderName = (String) session.getAttribute("loginName");
			List<Patent> cList = papo.patentIdAll(patentHolderName);
			List<Patent> pResult = new ArrayList<Patent>();

			for (int i = 0; i < cList.size(); i++) {
				if (i > pageSu - 10) {
					if (i <= pageSu) {
						pResult.add(cList.get(i));
					}
				}
			}
			return pResult;
		}

	}
	@RequestMapping(value = "/goPatent", method = RequestMethod.GET)
	public String goPatent(Model model) {
		Random random = new Random();
		int i = random.nextInt(9999)+1000;
		int j = random.nextInt(999999)+1000;
		String total = "KR10-";
		String dasi = "-";
		String patentNum ="";
		patentNum = total+i+dasi+j; 	
		Patent patent = papo.patsearchNum(patentNum);  //예외처리.. 하긴했는데 몬가 허술함;;
		if(patent!=null){
			model.addAttribute("num",patentNum);
		}
		return "search/search_menu";
	}
	
	@ResponseBody
	@RequestMapping(value = "/patinsertForm", method = RequestMethod.POST)
	public String patinsertForm(MultipartFile upload,PatentTotal paten, HttpSession session) {
		//patentNum 신청서(referenceFilename) 아이디(로그인) ,이름 
		System.out.println("173번줄"+paten);
			System.out.println("174번줄"+upload);
		int result = 0;
		int re =0;
		String memberId = (String) session.getAttribute("loginId");	
		paten.setMemberId(memberId);
		String referenceFilename = upload.getOriginalFilename();
		String saveReferenceFilename = FileService.saveFile(upload, uploadPath);
		paten.setReferenceFilename(referenceFilename);
		paten.setSaveReferenceFilename(saveReferenceFilename);
		
		result = papo.insertPatent(paten);  // Patent insert 하는 부분
		re = pspo.insertPatentsub(paten);	// PatentSun insert
		System.out.println("198번줄 result==>"+result+",  re==>"+re);
		if(result==1&&re==1){
			return "success";
		}else{
			return "false";
		}
		
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/itemSu", method = RequestMethod.GET)
	public int itemSu(Total total, HttpSession session) {

		String memberId = (String) session.getAttribute("loginId");
		total.setMemberId(memberId);
		List<Total> iList = itpo.getItemByMemberId(total);
		System.out.println("130번줄 item 양==>" + iList.size());
		return iList.size();
	}

	@ResponseBody
	@RequestMapping(value = "/itemTable", method = RequestMethod.GET)
	public List<Total> patentTable(HttpSession session, Total total, int pageSu) {
		String memberId = (String) session.getAttribute("loginId");
		total.setMemberId(memberId);
		System.out.println("item==>" + total);
		List<Total> iList = itpo.getItemByMemberId(total);
		System.out.println("147번줄 mList==>" + iList);
		List<Total> result = new ArrayList<Total>();

		for (int i = 0; i < iList.size(); i++) {
			if (i > pageSu - 10) {
				if (i <= pageSu) {
					result.add(iList.get(i));
				}
			}
		}
		System.out.println("아이템==>" + result.size());
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "/overlap", method = RequestMethod.GET)
	public String overlap(String memberId) { // 회원id 폼 request
		System.out.println("memberId==>" + memberId);
		devMember overlapId = dao.overlap(memberId);
		try {
			if (overlapId == null) {
				System.out.println("해당아이디 없음");
				return "success";
			} else {
				System.out.println("해당아이디 존재");
				return "fail";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	@RequestMapping(value = "/loginform", method = RequestMethod.POST)
	public String login(devMember member, HttpSession session) { // 로그인 폼
																	// request
		System.out.println(member);
		devMember mem = dao.login_member(member);
		if (mem != null) {
			if (!mem.getMemberType().equals("none")) {
				session.setAttribute("loginId", mem.getMemberId());
				session.setAttribute("loginName", mem.getMemberName());
				session.setAttribute("loginType", mem.getMemberType());
				System.out.println("로그인 성공 : " + member);
				return "redirect:/";
			}
		} else {
			System.out.println("로그인 실패");
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/signupform", method = RequestMethod.POST)
	public String signup_member(devMember member, HttpSession session) { // 회원가입
																			// 폼
																			// request
		System.out.println(member);
		try {
			int signup = dao.signup_member(member);
			if (signup == 1) {
				System.out.println("회원가입 성공 : " + member);
				return "redirect:/";
			} else {
				System.out.println("회원가입 실패");
				return "redirect:/member/gosign";
			}
		} catch (Exception e) {
			return "redirect:/member/gosign";
		}

	}

	@RequestMapping(value = "/updateform", method = RequestMethod.POST)
	public String update_member(devMember member, HttpSession session) { // 회원수정
																			// 폼
																			// request
		System.out.println("update의member==>" + member);
		try {
			int update = dao.update_member(member);
			if (update == 1) {
				System.out.println("회원수정 성공 : " + member);
				return "redirect:/";
			} else {
				System.out.println("회원수정 실패");
			}
		} catch (Exception e) {
			return "redirect:/member/goMypage";
		}
		return "redirect:/member/goMypage";
	}

	@RequestMapping(value = "/dropoutform", method = RequestMethod.POST)
	public String dropout_member(devMember member, HttpSession session) { // 회원수정
																			// 폼
																			// request
		System.out.println("delete의member==>" + member);
		try {
			int dropout = dao.delete_member(member);
			if (dropout == 1) {
				System.out.println("회원삭제 성공 : " + member);
				return "redirect:/";
			} else {
				System.out.println("회원삭제 실패");
				return "redirect:/member/goMypage";
			}
		} catch (Exception e) {
			return "redirect:/member/goMypage";
		}

	}

	@ResponseBody
	@RequestMapping(value = "/searchId", method = RequestMethod.POST)
	public String searchId_member(devMember member) { // 회원id 폼 request
		System.out.println("searchId의 member==>" + member);
		devMember searchId_pw = dao.searchId_pw_member(member);
		try {
			if (searchId_pw != null) {
				System.out.println("아이디 찾기 성공 : " + member);
				return searchId_pw.getMemberId();

			} else {
				System.out.println("아이디 찾기 실패");
				return "";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return searchId_pw.getMemberId();
	}

	@ResponseBody
	@RequestMapping(value = "/searchPw", method = RequestMethod.POST)
	public String searchpw_member(devMember member) { // 회원pw 폼 request
		System.out.println("searchpw의 member==>" + member);
		devMember searchId_pw = dao.searchId_pw_member(member);
		try {
			if (searchId_pw != null) {
				System.out.println("비번 찾기 성공 : " + member);
				return searchId_pw.getMemberPw();
			} else {
				System.out.println("비번 찾기 실패");
				return "";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return searchId_pw.getMemberPw();
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@ResponseBody
	@RequestMapping(value = "/permitForm", method = RequestMethod.POST)
	public String permitForm(MultipartFile upload, MultipartFile upload1, ItemDo itemdo) {
		// memberId, patentNum, documentfileName, itemNum 을 받아옴 / patentSubNum
		int re = 0;
		int result = 0;
		int ptiResult = 0;
		System.out.println("346번줄patent==>" + itemdo);
		System.out.println("upload==>" + upload + "  upload1==>" + upload1);
		ItemDo sub = pspo.selectPatSub(itemdo);
		System.out.println("349번줄==>"+sub);
		itemdo.setPatentsubNum(sub.getPatentsubNum());
		if (upload == null || upload1 == null) {
			System.out.println("351번 여기요!!");
			re = itpo.updateItemDo(itemdo);
			result = dopo.insertDocument(itemdo);
			System.out.println("354번줄 re==>"+re+",  result==>"+result);
		} else if (upload.getSize() == 0 || upload.isEmpty() || upload1.getSize() == 0 || upload1.isEmpty()) {
			System.out.println("351번 여기요!!");
			re = itpo.updateItemDo(itemdo);
			result = dopo.insertDocument(itemdo);

		} else {
			System.out.println("362번 여기요!!");
			String referenceFilename = upload.getOriginalFilename();

			String saveReferenceFilename = FileService.saveFile(upload, uploadPath);

			String documentFilename = upload1.getOriginalFilename();
			String saveDocumentFilename = FileService.saveFile(upload1, uploadPath);
			itemdo.setDocumentFilename(referenceFilename + "@" + documentFilename);
			itemdo.setSaveDocumentFilename(saveReferenceFilename + "@" + saveDocumentFilename);
			ptiResult = ptipo.insertPTI(itemdo);
			re = itpo.updateItemDo(itemdo); // documentFilename,
											// saveDocumentFilename ==>item
											// Table 업데이트 clear
			result = dopo.insertDocument(itemdo); // documentFileName,
													// saveDocument ==> document
													// Table 추가 patentSubNum 필요
			try {
				if (result == 1 && re == 1 && ptiResult==1) {
					System.out.println("377번줄!! success");
					return "success";
				} else {
					return "false";
				}
			} catch (Exception e) {
				e.printStackTrace();
				return "false";
			}
		}
		System.out.println("387번줄!! success");
		return "success";
	}

	@ResponseBody
	@RequestMapping(value = "/memberItemNum", method = RequestMethod.GET)
	public List<Total> memberItemNum(Total total) {
		System.out.println("370번줄==>" + total);
		List<Total> result = itpo.getItemByMemberId(total);

		return result;
	}

}
