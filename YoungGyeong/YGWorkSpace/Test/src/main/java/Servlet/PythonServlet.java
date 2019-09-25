package Servlet;


import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet() : 어노테이션
//--> URL Mapping속성값을 가짐
//-->해당 서블릿과 문자열을 맵핑
//-->문자열이 똑같은 서블릿 파일이 있는 경우에 서버는 동작하지 못함.
//-->겹치면 안된다!
//@WebServlet() : 어노테이션
//-->URL MAPPING속성값을 가짐
//-->해당 서블릿과 문자열을 병합
@WebServlet("/PythonServlet")
public class PythonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProcessBuilder builder = new ProcessBuilder("python","C:\\Users\\vdi02\\Downloads\\pythonTest.py","hello","world","apple");
		Process process = builder.start();
		Scanner errorScanner = new Scanner(process.getErrorStream());
		Scanner outputScanner = new Scanner(process.getInputStream());
		try {
			process.waitFor();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		// 에러 스트림 from 파이썬파일
		while(errorScanner.hasNext()) {
			System.out.println(errorScanner.nextLine());
		}
		errorScanner.close();
		
		// 입력 스트립 from 파이썬파일
		while(outputScanner.hasNext()) {
			System.out.println(outputScanner.nextLine());
		}
		outputScanner.close();
	}
}
