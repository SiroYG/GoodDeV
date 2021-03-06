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
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e2) {
			e2.printStackTrace();
		}
		java.util.List<String> list = new ArrayList<>();
		ProcessBuilder builder = new ProcessBuilder("C:/Users/창민/AppData/Local/Programs/Python/Python37/python","C:/Program Files/pythonTest.py",keyWord,"world","apple");
		Process process=null;
		String a ="";
		try {
			System.out.println("builder.toString()"+builder.toString());
			
			process = builder.start();
		
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		Scanner errorScanner = new Scanner(process.getErrorStream());
		Scanner outputScanner = new Scanner(process.getInputStream());
		System.out.println("57번줄");
		System.out.println(process.getInputStream().toString());
		try {
			System.out.println("60번줄");	
		 		process.waitFor();
		 		System.out.println("62번줄");		
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("66번줄==>"+process.exitValue());
		/*while(errorScanner.hasNext()) {
			System.out.println(errorScanner.nextLine());
		}
		errorScanner.close();*/
		System.out.println("56번줄==>"+process.exitValue());
		String image = "";
		String title = "";
		String price = "";
		java.util.List<Crawling> cList = new ArrayList<>();
		while(outputScanner.hasNext()) {
				a = outputScanner.nextLine();
				if(a.equals("finish")) break;
				System.out.println("80번줄 a==>"+a);
				String [] array = a.split("@");
				title = array[0];
				price = array[1];
				image = array[2];
				System.out.println("86번줄 image ==>"+image+", price: "+price+"title: "+title);
				Crawling crawl = new Crawling(image,title,price);
				System.out.println("88번줄==>"+crawl);
				cList.add(crawl);
		}
		System.out.println("95번줄cList==>"+cList);
		
		
		outputScanner.close();
		
		return cList;
		
	}

}
