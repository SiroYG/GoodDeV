package com.dev.cloud.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Board;
import com.dev.cloud.vo.Question;
import com.dev.cloud.vo.Survey;
import com.dev.cloud.vo.Question_Time;

@Repository
public class item_SurveyRepository implements item_SurveyMapper{

	@Autowired
	SqlSession sqlsession;
	
	public int getBoardCount(String searchItem, String searchWord) {
		// TODO Auto-generated method stub
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		Map<String, Object> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		int total = mapper.getBoardCount(map);	
		return total;
	}

	public List<Question_Time> selectAll(String searchItem, String searchWord, int startRecord, int countPerPage) {
		List<Question_Time> list;
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);

		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		list = mapper.selectAll(map, rb);
		
		System.out.println("조회된 데이터 개수 => " + list.size());
		return list;
	}
	public Question_Time selectOne(int questionTimeNum) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		Question_Time Question_Time = mapper.selectOne(questionTimeNum);

		return Question_Time;
	}
	
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
	public int getBoardCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Question_Time> selectAll(Map<String, String> map, RowBounds rb) {
		// TODO Auto-generated method stub
		return null;
	}

	

	
	

	

	





}
