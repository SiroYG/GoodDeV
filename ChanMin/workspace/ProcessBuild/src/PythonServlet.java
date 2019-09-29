

import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PythonServlet")
public class PythonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProcessBuilder builder = new ProcessBuilder("C:/Users/창민/AppData/Local/Programs/Python/Python37/python","C:/Program Files/pythonTest.py","hello","world","apple");
		Process process = builder.start();
		Scanner errorScanner = new Scanner(process.getErrorStream());
		Scanner outputScanner = new Scanner(process.getInputStream());
		try {
			process.waitFor();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	
		while(errorScanner.hasNext()) {
			System.out.println(errorScanner.nextLine());
		}
		errorScanner.close();
		
		
		while(outputScanner.hasNext()) {
			System.out.println(outputScanner.nextLine());
			
		}
		
		
		outputScanner.close();
		System.out.println("gg");
		
	}

}
