package test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

//표준특허 코드정보조회


public class Main {
	public static void main(String[] args) throws Exception {
		WebConnection wc = new WebConnection();
		String json = wc.json;
		JSONParser parser = new JSONParser();
		JSONObject obj = (JSONObject)parser.parse(json);
		JSONObject channel = (JSONObject)obj.get("getStdOrganInfo");
		
		JSONArray item = (JSONArray)channel.get("item");
		System.out.println("23번  "+item.size());
		for(int i=0;i<item.size();i++) {
			JSONObject tmp = (JSONObject)item.get(i);
			String stdfieldkor = (String)tmp.get("STDFIELDKOR");
			String work = (String)tmp.get("WORKPROGRESS");
			String stdfieldeng = (String)tmp.get("STDFIELDENG");
		//	String workprogress = (String)tmp.get("WORKPROGRESS");
		//	String num = (String)tmp.get("NUM");
			System.out.println("==="+(i+1)+"번째 검색 결과");
			System.out.println("work =>"+work);
			System.out.println("미국 =>"+stdfieldeng);
			System.out.println("한국=>"+stdfieldkor);
			
		}
	} 
 
}
class WebConnection{
	String json;
	WebConnection() throws Exception{
		String address = "http://apis.data.go.kr/1430000/StdPatInfoService/getStdOrganInfo?resultType=JSON&serviceKey=TK4%2FNvGshDu8%2BoygLWq7rf43XxICipR0kPR2C3Cn1cd%2Fn7ZKy45slOVg0uW7uOv4tZROnMDU749JuL2X%2FkhlEQ%3D%3D";
		
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