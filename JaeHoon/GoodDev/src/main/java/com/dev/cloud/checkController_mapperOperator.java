package com.dev.cloud;


import java.util.ArrayList;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dev.cloud.dao.boardRepository;
import com.dev.cloud.dao.itemRepository;
import com.dev.cloud.dao.memberRepository;
import com.dev.cloud.dao.replyRepository;
import com.dev.cloud.vo.Board;
import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.MTI;
import com.dev.cloud.vo.Reply;
import com.dev.cloud.vo.devMember;

/**
 * Handles requests for the application home page.
 */
@Controller
public class checkController_mapperOperator {
	
	@Autowired 
	memberRepository repo;
	@Autowired 
	boardRepository bRepo;
	@Autowired 
	itemRepository iRepo;
	@Autowired 
	replyRepository rRepo;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	//멤버테이블의 쿼리문을 검증하기 위함.
	@RequestMapping(value = "home1", method = RequestMethod.GET)
	public String home1(Locale locale, Model model) {
		String sysout;

		devMember temp=new devMember();
		temp.setMemberId("temp");
		temp.setMemberPw("temp");
		temp.setMemberType("temp");
		temp.setEmail("temp");
		temp.setPhoneNum("010-1111-1111");
		temp.setMemberName("홍길동");
		
		System.out.println(temp);


		int resultInt =repo.signup_member(temp);
		sysout=checkInt(resultInt, "signup_member");
		System.out.println(sysout);
		//회원가입확인
		
		devMember resultObject=repo.login_member(temp);
		sysout=checkObject(resultObject, "login_member");
		System.out.println(sysout);
		//로그인확인
		
		resultObject=repo.searchId_pw_member(temp);
		sysout=checkObject(resultObject, "searchId_pw_member");
		System.out.println(sysout);
		//아디비번찾기 확인
		
		
		temp.setPhoneNum("010-1234-5678");
		resultInt=repo.update_member(temp);
		sysout=checkInt(resultInt, "signup_member");
		System.out.println(sysout);
		System.out.println(temp);

		//회원수정확인
		
		temp.setMemberType("none");
		resultInt=repo.delete_member(temp);
		sysout=checkInt(resultInt, "signup_member");
		System.out.println(sysout);
		System.out.println(temp);
		//회원삭제 type이 변경됨확인
		
		return "mapperOperator";
	}
	
	//보드테이블의 쿼리문을 검증하기 위함.
	@RequestMapping(value = "home2", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		String sysout;

		Board temp=new Board();
		temp.setMemberId("temp");
		temp.setTitle("tempTitle");
		temp.setContent("tempContent");
		temp.setQCategory("특허");
		temp.setQType("tempTyoe");
		temp.setOriginalFilename("originalFilename");
		temp.setSaveFilename("saveFilename");
		
		System.out.println(temp);

		Board resultObject =null;
		ArrayList<Board> resultList =null;
		//인서트확인
		int resultInt =bRepo.insertBoard(temp);
		sysout=checkInt(resultInt, "insertBoard");
		System.out.println(sysout);
		
		
		//삭제확인
		temp.setBoardNum(5);
		resultInt=bRepo.deleteBoard(temp);
		sysout=checkInt(resultInt, "deleteBoard");
		System.out.println(sysout);
		//리스트출력확인
		resultList=bRepo.selectAllBoard();
		sysout=checkObject(resultList, "selectAllBoard");
		System.out.println(sysout);
		//보드넘버로확인
		
		resultObject=bRepo.selectBoardByboardNum(temp);
		sysout=checkObject(resultObject, "selectBoardByboardNum");
		System.out.println(sysout);
		
		//업데이트확인
		temp.setQCategory("아이템");
		resultInt=bRepo.updateBoard(temp);
		sysout=checkInt(resultInt, "updateBoard");
		System.out.println(sysout);
		
		
		
		
		return "mapperOperator";
	}
	
	//아이템테이블의 쿼리문을 검증하기위함 
	@RequestMapping(value = "home3", method = RequestMethod.GET)
	public String home3(Locale locale, Model model) {
		String sysout;
		int resultInt=0;
		Item temp=new Item();
		ArrayList<Item> tempList=new ArrayList<>();
		/*temp.setItemName("itemName4");
		temp.setItemContent("itemContent");
		temp.setDocumentFilename("documentFilename");
		temp.setSaveDocumentFilename("saveDocumentFilename");
		Item resultObject=new Item();
		
		resultInt=iRepo.insertItem(temp);
		sysout=checkInt(resultInt, "insertItem");
		System.out.println(sysout);
		
		
		System.out.println(temp);
		resultObject=iRepo.getItemNumByItemName(temp);
		sysout=checkObject(resultObject, "getItemNumByItemName");
		System.out.println(sysout);
		//////////////
		
		MTI mti=new MTI();
		mti.setMemberId("temp");
		mti.setItemNum(resultObject.getItemNum());
		resultInt=iRepo.insertMTI(mti);
		sysout=checkInt(resultInt, "insertMTI");
		System.out.println(sysout);*/
		MTI mti=new MTI();
		mti.setMemberId("temp");
		tempList=iRepo.getItemNumById(mti);
		sysout=checkObject(tempList, "selectItemById");
		System.out.println(sysout);
		
		mti.setItemNum(tempList.get(1).getItemNum());
		temp=iRepo.selectItemByItemNum(mti);
		sysout=checkObject(tempList, "selectItemByItemNum");
		System.out.println(sysout);
		
		//temp.setItemImagename("itemImagename");
		//temp.setSaveItemImage("saveItemImage");
		System.out.println(temp);
		temp.setItemContent("something changed");		
		resultInt=iRepo.updateItem(temp);
		sysout=checkInt(resultInt, "updateItem");
		System.out.println(sysout);
		
		
		
		
		return "mapperOperator";
	}
	
	
	
	
	//아이템테이블의 쿼리문을 검증하기위함 
		@RequestMapping(value = "home4", method = RequestMethod.GET)
		public String home4(Locale locale, Model model) {
			String sysout;
			int resultInt=0;
			Reply temp=new Reply();
			ArrayList<Reply> tempList=new ArrayList<>();
			temp.setBoardNum(5);
			temp.setMemberId("temp");
			temp.setReply("여기가 메모장???");
			
			
			resultInt=rRepo.insert_reply(temp);
			sysout=checkInt(resultInt, "insert_reply");
			System.out.println(sysout);
			
			tempList=rRepo.selectAll_reply(temp);
			sysout=checkObject(tempList, "selectAll_reply");
			System.out.println(sysout);
			
			resultInt=rRepo.delete_reply(tempList.get(0));
			sysout=checkInt(resultInt, "delete_reply");
			System.out.println(sysout);
			
			temp=rRepo.selectOne_reply(tempList.get(0));
			sysout=checkObject(temp, "selectOne_reply");
			System.out.println(sysout);
			
			resultInt=rRepo.update_reply(temp);
			sysout=checkInt(resultInt, "update_reply");
			System.out.println(sysout);
			
			
			
			
			return "mapperOperator";
		}
	
	public String checkInt(int resultInt, String methodName){
		
		if(resultInt==0){
			return methodName+"메소드 실패";
		}
		return methodName+"메소드성공";
		
	}
	public String checkObject(Object resultInt, String methodName){
		
		if(resultInt==null){
			return methodName+"메소드 실패";
		}
		return methodName+"메소드성공";
		
	}
	
}
