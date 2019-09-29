package servlet;


import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PythonServlet")
public class PythonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		ProcessBuilder builder = new ProcessBuilder("python","/Users/SiroYG/Downloads/pythonTest.py","hello","world","apple");
		//processBuilder 파라미터 (1: 파이썬파일경로 / 2: 구동시킬 py파일경로 / 3~…. 넘길 파라미터)
		Process process = builder.start();
		//ProcessBuilder.start 로 동작 , 파이썬이 Py파일의 명령을 순차적으로 실행
		Scanner errorScanner = new Scanner(process.getErrorStream());
		Scanner outputScanner = new Scanner(process.getInputStream());
			//Output 스캐너가 이를 프로세스의 출력내용을 저장
		try {
			process.waitFor();
		} catch (InterruptedException e) {
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
			// .nextLine()으로 한줄씩 스트링으로 리턴
			//리스트형식으로 파라미터들을 출력
		}
		outputScanner.close();
	}
}
