package com.dev.cloud.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dev.cloud.vo.Item_Question;
import com.dev.cloud.vo.Item_Survey;

@Repository
public class item_SurveyRepository implements item_SurveyMapper{

	@Autowired
	SqlSession sqlsession;
	
	@Override
	public int insertItem_Question(Item_Question itemQustion) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.insertItem_Question(itemQustion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<Item_Question> getItem_QuestionByItemNum(Item_Question itemQustion) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		ArrayList<Item_Question> result=null;
		try {
			result=mapper.getItem_QuestionByItemNum(itemQustion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updateItem_Question(Item_Question itemQustion) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.updateItem_Question(itemQustion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int deleteItem_Question(Item_Question itemQustion) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.deleteItem_Question(itemQustion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int insertItem_Survey(Item_Survey item_Survey) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.insertItem_Survey(item_Survey);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public ArrayList<Item_Survey> getqValueableByQuestionNum(Item_Question item_Question) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		ArrayList<Item_Survey> result=null;
		try {
			result=mapper.getqValueableByQuestionNum(item_Question);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int deleteItem_Survey(Item_Survey item_Survey) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.deleteItem_Survey(item_Survey);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updateItem_Survey(Item_Survey item_Survey) {
		item_SurveyMapper mapper=sqlsession.getMapper(item_SurveyMapper.class);
		int result=0;
		try {
			result=mapper.updateItem_Survey(item_Survey);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
