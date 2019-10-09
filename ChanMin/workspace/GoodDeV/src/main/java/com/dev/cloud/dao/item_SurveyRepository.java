package com.dev.cloud.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.Question;
import com.dev.cloud.vo.QuestionTotal;
import com.dev.cloud.vo.Survey;
import com.dev.cloud.vo.Question_Time;
import com.dev.cloud.vo.Search;

@Repository
public class item_SurveyRepository implements item_SurveyMapper{

	@Autowired
	SqlSession sqlsession;
	
	@Override
	public int insertQuestion_Time(Question_Time question_Time) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.insertQuestion_Time(question_Time);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public int insertQuestion(Question qustion) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.insertQuestion(qustion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<Question_Time> getQuestion_TimeByItemNum(Question_Time question_Time) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		ArrayList<Question_Time> result=null;
		try {
			result=	mapper.getQuestion_TimeByItemNum(question_Time);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


	
	
	
	@Override
	public ArrayList<Question> getQuestionByQuestionTimeNum(Question qustion) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		ArrayList<Question> result=null;
		try {
			result=mapper.getQuestionByQuestionTimeNum(qustion);
			System.out.println("repo70line"+qustion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updateQuestion_Time(Question_Time question_Time) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.updateQuestion_Time(question_Time);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	@Override
	public int updateQuestion(Question qustion) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.updateQuestion(qustion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}


	@Override
	public int writeEtc(Question_Time question_Time) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.writeEtc(question_Time);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	
	
	@Override
	public int deleteQuestion(Question qustion) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.deleteQuestion(qustion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int insertSurvey(Survey survey) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.insertSurvey(survey);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<Survey> getqValueableByQuestionNum(Survey survey) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		ArrayList<Survey> result=null;
		try {
			result=mapper.getqValueableByQuestionNum(survey);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int deleteQuestion_Time(Question_Time question_Time) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.deleteQuestion_Time(question_Time);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<QuestionTotal> selectAllQuestion_TimeById(Question_Time Question_Time) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		ArrayList<QuestionTotal> result=null;
		try {
			System.out.println("173 : "+Question_Time);
			result=mapper.selectAllQuestion_TimeById(Question_Time);
			System.out.println("175 : "+result);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public List<QuestionTotal> selectBySearchItem() {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		List<QuestionTotal> result=null;
		try {
			result=mapper.selectBySearchItem();
			System.out.println("175 : "+result);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public Question_Time getQuestion_TimeByQuestion_TimeNum(Question_Time question_Time) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		Question_Time result=null;
		try {
			result=mapper.getQuestion_TimeByQuestion_TimeNum(question_Time);
			System.out.println("175 : "+result);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<Question> getQuestionByQuestionNum(Question question){
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		ArrayList<Question> result=null;
		try {
			result=mapper.getQuestionByQuestionNum(question);
			System.out.println("175 : "+result);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	
	@Override
	public Question_Time getQuestionTimeNumByItemNumandTitle(Question_Time question_Time) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		Question_Time result=null;
		try {
			 result=mapper.getQuestionTimeNumByItemNumandTitle(question_Time);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Item getItembyqtNum(Question_Time question_Time) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		Item result=null;
		try {
			 result=mapper.getItembyqtNum(question_Time);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	
	

	

	





}
