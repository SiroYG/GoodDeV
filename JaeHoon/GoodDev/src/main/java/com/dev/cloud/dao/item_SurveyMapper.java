package com.dev.cloud.dao;

import java.util.ArrayList;

import com.dev.cloud.vo.Item_Question;
import com.dev.cloud.vo.Item_Survey;

public interface item_SurveyMapper {

	//질문입력
	public int insertItem_Question(Item_Question itemQustion);
	
	//질문가져오기 퀘스쳔 번호로
	public ArrayList<Item_Question> getItem_QuestionByItemNum(Item_Question itemQustion);
	
	//질문수정 퀘스쳔번호로
	public int updateItem_Question(Item_Question itemQustion);
	
	//질문 삭제기능(question = 'none')itemQustion번호로
	public int deleteItem_Question(Item_Question itemQustion);
	
	//서베이입력
	public int insertItem_Survey(Item_Survey item_Survey);
	
	//서베이 가치 출력, 입력날짜와 퀘스쳔 번호를 이용
	public ArrayList<Item_Survey> getqValueableByQuestionNum(Item_Question item_Question);
	
	
	//서베이 삭제, 수정이 가능하게 할 지 아닐지 고민해봐야함.
	//익명으로 한다면 id를 저장하지 않기 때문에 삭제 수정이 불필요
	//서베이 삭제(etc='none') 세베이 번호로
	public int deleteItem_Survey(Item_Survey item_Survey);
		
	//서베이 수정 세베이 번호로
	public int updateItem_Survey(Item_Survey item_Survey);

	//서베이에서 기타의견 입력시 퀘스쳔테이블에 계속 업데이트 된다.
	//
	public int writeEtc(Item_Question itemQustion);
	
}
