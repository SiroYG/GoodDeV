package com.dev.cloud.controller;


import java.awt.List;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dev.cloud.vo.Crawling;





@Controller
@RequestMapping("/PythonServlet")
public class PythonServlet {
	//private static final long serialVersionUID = 1L;

	
	@RequestMapping(value="/searchGoee",method = RequestMethod.GET, produces = "application/json")	
	@ResponseBody
	public java.util.List<Crawling> service(HttpServletRequest request, HttpServletResponse response,String keyWord){
	
		
		ProcessBuilder builder = new ProcessBuilder("C:/Users/창민/AppData/Local/Programs/Python/Python37/python","C:/Program Files/pythonTest.py",keyWord,"world","apple");
		Process process=null;
		String a ="";
		try {
			process = builder.start();	
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		Scanner outputScanner = new Scanner(process.getInputStream());
			
		try {
		
		 		process.waitFor();
		 		
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	
		String image = "";
		String title = "";
		String price = "";
		java.util.List<Crawling> cList = new ArrayList<>();
		while(outputScanner.hasNext()) {
				a = outputScanner.nextLine();
				if(a.equals("finish")) break;
				
				String [] array = a.split("@");
				title = array[0];
				price = array[1];
				image = array[2];
			
				Crawling crawl = new Crawling(image,title,price);
				
				cList.add(crawl);
		}
		
		
		outputScanner.close();
		
		return cList;
		
	}

}
