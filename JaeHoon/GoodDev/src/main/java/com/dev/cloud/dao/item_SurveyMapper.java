package com.dev.cloud.dao;

import java.util.ArrayList;
import java.util.List;

import com.dev.cloud.vo.Question;
import com.dev.cloud.vo.QuestionTotal;
import com.dev.cloud.vo.Survey;
import com.dev.cloud.vo.Question_Time;
import com.dev.cloud.vo.Search;

public interface item_SurveyMapper {

	
	//질문시간 입력
	public int insertQuestion_Time(Question_Time question_Time);
	
	//질문입력
	public int insertQuestion(Question qustion);
	
	//질문날짜가져오기
	public ArrayList<Question_Time> getQuestion_TimeByItemNum(Question_Time question_Time);
	
	//질문가져오기 퀘스쳔 시간번호로
	public ArrayList<Question> getQuestionByQuestionTimeNum(Question qustion);
	
	//질문날짜수정 퀘스쳔번호로
	public int updateQuestion_Time(Question_Time question_Time);
	
	//질문수정 퀘스쳔번호로
	public int updateQuestion(Question qustion);
	
	//서베이에서 기타의견 입력시 퀘스쳔테이블에 계속 업데이트 된다.
	public int writeEtc(Question_Time question_Time);
	
	//질문 삭제기능(question = 'none')itemQustion번호로
	public int deleteQuestion(Question question);
	
	//서베이입력
	public int insertSurvey(Survey survey);
	
	//서베이 가치 출력, 입력날짜와 퀘스쳔 번호를 이용
	public ArrayList<Survey> getqValueableByQuestionNum(Survey survey);


	//퀘스쳔 타임삭제(questionTitle = 'none') questionTimeNum번호로
	public int deleteQuestion_Time(Question_Time question_Time);
	
	public ArrayList<QuestionTotal> selectAllQuestion_TimeById(Question_Time Question_Time);
	
	public List<QuestionTotal> selectBySearchItem(Search search);

	
}
