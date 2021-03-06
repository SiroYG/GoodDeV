package com.dev.cloud.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import com.dev.cloud.dao.itemRepository;
import com.dev.cloud.dao.item_SurveyRepository;
import com.dev.cloud.vo.Item;
import com.dev.cloud.vo.Question;
import com.dev.cloud.vo.QuestionTotal;
import com.dev.cloud.vo.Question_Time;
import com.dev.cloud.vo.Search;
import com.dev.cloud.vo.Survey;
import com.dev.cloud.vo.Total;


@Controller
@RequestMapping("/survey")
public class SurveyController {

	@Autowired
	item_SurveyRepository IsRepo;
	
	@Autowired 
	itemRepository Irepo ;

	@RequestMapping(value = "/goSurvey_list", method = RequestMethod.GET)
	public String goSurvey_list(HttpSession session, Model model) {

		Question_Time qTime = new Question_Time();
		ArrayList<QuestionTotal> qTotalList = new ArrayList<>();
		ArrayList<QuestionTotal> getQTList = new ArrayList<>();
		getQTList = IsRepo.selectAllQuestion_TimeById(qTime);
		System.out.println("getQTList : "+getQTList);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date today=new Date();
		System.out.println("today : "+today);
		//가져온due데이트가 오늘 날짜를 지나지 않았을 경우 어레이에 추가 해준다.
		if(getQTList.size()!=0){
		for(QuestionTotal qtemp:getQTList){
				String dueDate=qtemp.getDueDate();
			try {
				Date tempDueDate=sdf.parse(dueDate);
				int compare=0;
				compare=tempDueDate.compareTo(today);
				System.out.println(qtemp.getQuestionTimeNum()+":"+compare);
				if(compare==1){
					
					qTotalList.add(qtemp);
				}
			//같은 날짜일 경우에도 가져오기 위함.
				String tempStrToday = sdf.format(today);
				String tempStrDuedate=sdf.format(tempDueDate);
				if(tempStrToday.equals(tempStrDuedate)){
				
					qTotalList.add(qtemp);
				}
				
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}
		


	
		
		model.addAttribute("qTotalList", qTotalList);
		
		
		//아이템보유자가 테스트진행하려고 할때  item을선택하도록 해주기 위함.
		Total item=new Total();
		item.setMemberId((String)session.getAttribute("loginId"));
		List<Total> iList=Irepo.getItemByMemberId(item);
		model.addAttribute("iList", iList);
//		
//		System.out.println(qTotalList);
//		if (qTotalList.size() != 0) {
//			for (QuestionTotal q : qTotalList) {
//				System.out.println(q.toString());
//			}
//		}

		return "/survey/survey_list";
	}
	@RequestMapping(value = "/goSurvey_list", method = RequestMethod.POST)
	public String goSurvey_list( HttpSession session, Model model, Question_Time question_Time , Question question) {
		System.out.println("line64 : "+question_Time);
		
		IsRepo.insertQuestion_Time(question_Time);
		
		Question_Time questionTimeNum=IsRepo.getQuestionTimeNumByItemNumandTitle(question_Time);
		System.out.println(questionTimeNum);
		String getQeustion=question.getQuestion();
		String [] arrGetQuestion=getQeustion.split(",");
		Question que=new Question();
		for(String temp : arrGetQuestion){
			que.setQuestion(temp);
			que.setQuestionTimeNum(questionTimeNum.getQuestionTimeNum());
			System.out.println("line77 : "+que);
			IsRepo.insertQuestion(que);
		}
		
//		
//		Question_Time qTime = new Question_Time();
//		ArrayList<QuestionTotal> qTotalList = new ArrayList<>();
//		qTotalList = IsRepo.selectAllQuestion_TimeById(qTime);
//		model.addAttribute("qTotalList", qTotalList);
//
//		for(QuestionTotal temp : qTotalList){
//			System.out.println("check"+temp);
//		}
//		
//		
//		Item item=new Item();
//		item.setMemberId((String)session.getAttribute("loginId"));
//		ArrayList<Item> iList=Irepo.getItemByMemberId(item);
//		model.addAttribute("iList", iList);
//		if (qTotalList.size() != 0) {
//			for (QuestionTotal q : qTotalList) {
//				System.out.println(q.toString());
//			}
//		}
		
		
		
		
		 
		
		return "redirect:goSurvey_list";
	}
	
	

	@RequestMapping(value = "/gosurvey_Detail", method = RequestMethod.GET)
	public String gosurvey_Detail(Model model, Question_Time question_Time) {
		Question_Time question_time = new Question_Time();
		question_time.setQuestionTimeNum(question_Time.getQuestionTimeNum());
		ArrayList<Question> qList = new ArrayList<>();

		Question_Time qTime = new Question_Time();
		System.out.println("61 line : " + question_time);
		qTime = IsRepo.getQuestion_TimeByQuestion_TimeNum(question_time);
		System.out.println("161ine qTime : "+qTime);
		Question Qtemp=new Question();
		System.out.println("124line : "+question_Time.getQuestionTimeNum());
		Qtemp.setQuestionTimeNum(question_Time.getQuestionTimeNum());
		
		qList = IsRepo.getQuestionByQuestionTimeNum(Qtemp);
		System.out.println("127line : "+qList);
		
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd");
	      Calendar time = Calendar.getInstance();
	      String times = format.format(time.getTime());
	      
	      
		model.addAttribute("qTime", qTime);
		model.addAttribute("qList", qList);
		model.addAttribute("qtnum", question_Time.getQuestionTimeNum());
	    model.addAttribute("time", times);
		System.out.println("65line :"+question_Time.getQuestionTimeNum());
		System.out.println("65line qTime : " + qTime);

		System.out.println("67line qList : " + qList);
	


		return "/survey/survey_Detail";
	}
	@RequestMapping(value = "/insertSurveyDatas", method = RequestMethod.POST)
//	public String insertSurveyDatas(Model model, @RequestParam HashMap<String, String> hashMap) {
	public String insertSurveyDatas(Model model) {	
		
		
		
		return "redirect:goSurvey_list";
		}

		
	
	
	//
	@RequestMapping(value = "/getSurvey_Detail", method = RequestMethod.POST)
	@ResponseBody
	public String getSurvey_Detail(Model model, @RequestBody HashMap<String, Object> params) {
		String etc=(String)params.get("etc");
		ArrayList<HashMap<String,Integer>> question = (ArrayList<HashMap<String,Integer>>)params.get("params");
		System.out.println(params);
		System.out.println(etc+"<<<etc");
		Survey s = new Survey();
		
		
		for(int i = 0; i < question.size(); i++){
			
			if(question.get(i)!=null){
			
			s.setQuestionNum(question.get(i).get("questionNum"));
			s.setQValuable(question.get(i).get("qValuable"));
			IsRepo.insertSurvey(s);
			System.out.println(s);
			}
		}
		Question q=new Question();
		q.setQuestionNum(s.getQuestionNum());
		ArrayList<Question> qtemp= IsRepo.getQuestionByQuestionNum(q);
		int QTNUM=qtemp.get(0).getQuestionTimeNum();
		////////
		
		Question_Time qtime=new Question_Time();
		qtime.setQuestionTimeNum(QTNUM);
		qtime=IsRepo.getQuestion_TimeByQuestion_TimeNum(qtime);
		System.out.println("qtime.getEtc() : "+qtime.getEtc());
		if(qtime.getEtc()==null){
			qtime.setEtc(etc);
		}else {
			qtime.setEtc(qtime.getEtc()+"\n"+etc);
		}
		
		IsRepo.writeEtc(qtime);
		System.out.println(qtime);
		
		
		
		return "true";
	}
	
	
	
	@RequestMapping(value = "/searchSurvey", method = RequestMethod.GET)
	@ResponseBody
	public List<QuestionTotal> searchSurvey(Model model, Search search) {
		System.out.println("line ++66");
		List<QuestionTotal> qtLsist = new ArrayList<>();
		qtLsist = IsRepo.selectBySearchItem(search);
		if (qtLsist.size() == 0) {
			return qtLsist;
		}
		return qtLsist;
	}
	@RequestMapping(value = "/goSurvey_form", method = RequestMethod.GET)
	public String goSurvey_form(Model model, Total item) {
		System.out.println(item);
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd");
	      Calendar time = Calendar.getInstance();
	      String times = format.format(time.getTime());
	     
	      model.addAttribute("times", times);
	      
	      Total getOneItem=Irepo.getOneItemByItemNum(item);
	      model.addAttribute("getOneItem", getOneItem);
	      System.out.println(getOneItem);
	      
		return "/survey/survey_form";
	}
	
	@RequestMapping(value = "/getSurveyListById", method = RequestMethod.GET)
	@ResponseBody
	public List<QuestionTotal> getSurveyListById(Model model, HttpSession session) {
		System.out.println("229line");
		List<QuestionTotal> qtList=new ArrayList<QuestionTotal>();
		Question_Time qtime=new Question_Time();
		String memberId=(String) session.getAttribute("loginId");
		
		qtime.setMemberId(memberId);
		System.out.println("235line"+qtList);
		qtList=IsRepo.selectAllQuestion_TimeById(qtime);
		System.out.println(qtList+"<-----size");
		return qtList;
	
	
	
	}
	@RequestMapping(value = "/gosurvey_result", method = RequestMethod.GET)
	public String gosurvey_result(Model model, Total item, Question_Time qTime) {
		
	      System.out.println("288line");
	      System.out.println(qTime);
	      int questionTimeNum=qTime.getQuestionTimeNum();
	      Question_Time getQTime=IsRepo.getQuestion_TimeByQuestion_TimeNum(qTime);
	      System.out.println(getQTime);
		  model.addAttribute("getQTime", getQTime);
		  
		  int itemNum=getQTime.getItemNum();
		  Total itemTemp=new Total();
		  itemTemp.setItemNum(itemNum);
		  itemTemp=Irepo.getOneItemByItemNum(itemTemp);
		  model.addAttribute("itemTemp", itemTemp);


	      Question temp=new Question();
	      temp.setQuestionTimeNum(questionTimeNum);
	      System.out.println("temp"+temp);
	     ArrayList<Question> questionList=new ArrayList<>();
	     questionList=IsRepo.getQuestionByQuestionTimeNum(temp);
	     System.out.println("312line questionList : "+questionList);
	     ArrayList<Survey> surList=new ArrayList<>();
	     Survey surveyTemp=new Survey();
	     //퀘스쳔리스트에 퀘스쳔 한개당 에버리지밸류값을 넣어주기 위함
	     for(Question question : questionList){
	    	int questionNum= question.getQuestionNum();
	    	surveyTemp.setQuestionNum(questionNum);
	    	surList=IsRepo.getqValueableByQuestionNum(surveyTemp);
	    	int getAvgSurvey=0;
	    	//한 퀘스쳔에 해당되는 여러개의 서베이 밸류의 에버리지를 구해서 넣어준다.
	    	for(Survey survey :  surList){
	    		
	    		getAvgSurvey+=survey.getQValuable();	
	    	}
	    	getAvgSurvey=getAvgSurvey/surList.size();
	    	question.setAvgSurvey(getAvgSurvey);
	     }
	     model.addAttribute("questionList", questionList);
	     System.out.println("questionList : "+questionList);
	     
	     
	     


		return "/survey/survey_result";
	}
	
	
}
