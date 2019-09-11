package test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import vo.Patent;

// 표준 번호별 선언/등재특허 정보조회

public class Lcm {
	
	public static void main(String[] args) throws Exception {
		PatentDaoManager manager = new PatentDaoManager();
		WebConnections wc = new WebConnections();
		String json = wc.json;
		String json1 = wc.json1;
		JSONParser parser = new JSONParser();
		JSONParser parser1 = new JSONParser();
		JSONObject obj = (JSONObject)parser.parse(json);
		JSONObject obj1 = (JSONObject)parser1.parse(json1);
		JSONObject channel = (JSONObject)obj.get("getStdNoDeclareRecordPatInfo");
		JSONObject channel1 = (JSONObject)obj1.get("getDeclareRecordPatDetailInfo");
		JSONArray item = (JSONArray)channel.get("item");
		JSONArray item1 = (JSONArray)channel1.get("item");
		
		ArrayList<Patent> aList = new ArrayList<>();
		String patentNum;
		String patentName;
		String patentHolderName;
		String patentContent;
		String patenttype;
		String patentAppDate;
		String patentRegdate;
		String patentCountry;
		for(int i=0;i<item.size();i++) {
			JSONObject tmp = (JSONObject)item.get(i);
			JSONObject tmp1 = (JSONObject)item1.get(i);
			  patentNum = (String)tmp.get("PATNOORG");
			  patentName = (String)tmp.get("INVENTTITLE");
			  patentHolderName = (String)tmp.get("APPLICANT");
			  patentContent = (String)tmp1.get("ABST");
			  patenttype = (String)tmp.get("INDUSTRYTITLE");
			  patentAppDate = (String)tmp.get("APPDATE");
			  patentRegdate = (String)tmp.get("REGDATE");
			  patentCountry = (String)tmp.get("APPCOUNTRYTITLE");
			  Patent patent = new Patent(patentNum,patentName,patentHolderName,patentContent,patenttype,patentAppDate,patentRegdate,patentCountry);
			  if(patent.getPatentAppDate()!=null&&patent.getPatenttype()!=null&&patent.getPatentHolderName()!=null&&patent.getPatentCountry().equals("대한민국")) {
				  //aList.add(patent);
				  manager.insertPatent(patent);
			  }
		}
		
	} 
}
class WebConnections{
	String json;
	String json1;
	WebConnections() throws Exception{
		String address = "http://apis.data.go.kr/1430000/StdPatInfoService/getStdNoDeclareRecordPatInfo?resultType=JSON&pageNo=1&numOfRows=1000&serviceKey=TK4%2FNvGshDu8%2BoygLWq7rf43XxICipR0kPR2C3Cn1cd%2Fn7ZKy45slOVg0uW7uOv4tZROnMDU749JuL2X%2FkhlEQ%3D%3D";
		String address1 = "http://apis.data.go.kr/1430000/StdPatInfoService/getDeclareRecordPatDetailInfo?resultType=JSON&pageNo=1&numOfRows=1000&serviceKey=TK4%2FNvGshDu8%2BoygLWq7rf43XxICipR0kPR2C3Cn1cd%2Fn7ZKy45slOVg0uW7uOv4tZROnMDU749JuL2X%2FkhlEQ%3D%3D";
		BufferedReader br;
		BufferedReader br1;
		URL url;
		URL url1;
		HttpURLConnection conn;
		HttpURLConnection conn1;
		String protocol = "GET";
		
		url = new URL(address);
		url1 = new URL(address1);
		conn = (HttpURLConnection)url.openConnection();
		conn1 = (HttpURLConnection)url1.openConnection();
		conn.setRequestMethod(protocol);
		conn1.setRequestMethod(protocol);
		br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		br1 = new BufferedReader(new InputStreamReader(conn1.getInputStream()));
		json = br.readLine();
		json1 = br1.readLine();
		System.out.println(json);
		System.out.println(json1);
	}
}