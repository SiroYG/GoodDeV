package test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

//표준 번호별 선언/등재특허 정보조회

public class Lcm {
	public static void main(String[] args) throws Exception {
		WebConnections wc = new WebConnections();
		String json = wc.json;
		JSONParser parser = new JSONParser();
		JSONObject obj = (JSONObject)parser.parse(json);
		JSONObject channel = (JSONObject)obj.get("getStdNoDeclareRecordPatInfo");
		
		JSONArray item = (JSONArray)channel.get("item");
	
		for(int i=0;i<item.size();i++) {
			JSONObject tmp = (JSONObject)item.get(i);
			String declearDate = (String)tmp.get("DECLAREDATE");
			String regdate = (String)tmp.get("REGDATE");
			
	
			System.out.println("==="+(i+1)+"번째 검색 결과");
			System.out.println("선언일자 =>"+declearDate);
			System.out.println("등록일자 =>"+regdate);
			
			
		}
	} 
 
}
class WebConnections{
	String json;
	WebConnections() throws Exception{
		String address = "http://apis.data.go.kr/1430000/StdPatInfoService/getStdNoDeclareRecordPatInfo?resultType=JSON&pageNo=100&serviceKey=TK4%2FNvGshDu8%2BoygLWq7rf43XxICipR0kPR2C3Cn1cd%2Fn7ZKy45slOVg0uW7uOv4tZROnMDU749JuL2X%2FkhlEQ%3D%3D";
		
		BufferedReader br;
		URL url;
		HttpURLConnection conn;
		String protocol = "GET";
		
		url = new URL(address);
		conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod(protocol);
		br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		
		json = br.readLine();
		
		System.out.println(json);
	}
}