package com.dev.cloud.utill;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/**
 * 파일 관련 유틸
 * 업로드한 파일의 저장 & 서버에 저장된 파일 삭제 등의 기능 제공
 */

public class FileService {
//	final public static String UPforITEM = "D:\\Eclipse\\Java\\새폴더"; //폴더 경로UploadPathforITEM
//	final public static String path = "D:\\Eclipse\\Java\\새폴더"; //폴더 경로
//	final public static String path = "D:\\Eclipse\\Java\\새폴더"; //폴더 경로

	
	//final String uploadPath = "/FileTest";ItemController.java
	//final String uploadPath = "/uploadfile";FundingController.java
	//final String uploadPath = "/PatentSub";PatentController.java
	//	final String uploadPath = "/PatentSub";MemberController.java



	/**
	 * 업로드 된 파일을 지정된 경로에 저장하고, 저장된 파일명을 리턴
	 * @param mfile 업로드된 파일
	 * @param path 저장할 경로
	 * @return 저장된 파일명
	 */
	public static String saveFile(MultipartFile upload, String uploadPath) {
		//저장 폴더가 없으면 생성
		File path = new File(uploadPath);
		if (!path.isDirectory()) {
			path.mkdirs();
		}

		//원본 파일명 : 파일이 존재하지 않으면 빈문자열 리턴
		String originalFilename = upload.getOriginalFilename();
		
		if(originalFilename.trim().length() == 0 || upload.isEmpty()) 
			return "";
		
		//저장할 파일명 뒤에 오늘 날짜의 년월일로 생성
		// SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		// 날짜나 랜덤값을 붙여 저장할 파일명을 작성한다. 랜덤 데이터 크기 36
		String sdf = UUID.randomUUID().toString();
		
		//원본 파일의 확장자와 파일명 분리
		String filename;		// 확장자를 뺀 파일명
		String ext;				// 확장명
		String savedFilename;	// 디스크에 저장할 이름
		
		int lastIndex = originalFilename.lastIndexOf('.');
		
		//확장자가 없는 경우
		if (lastIndex == -1) {
			ext = "";
			filename= originalFilename;
		}
		
		//확장자가 있는 경우
		else {
			ext = "." + originalFilename.substring(lastIndex + 1);
			filename= originalFilename.substring(0, lastIndex);
		}
		
		// DB에 저장될 파일명
		// savedFilename = filename+"_"+sdf.format(new Date()) + ext;

		filename = filename+"_"+sdf + ext;
		savedFilename = filename;	
		
		//저장할 전체 경로를 포함한 File 객체
		String serverFile = uploadPath + "/" +savedFilename;	
		
		//HDD에 저장할 파일명. 같은 이름의 파일이 있는 경우의 처리
		/*
		while (true) {
			serverFile = new File(uploadPath + "/" + filename);
			//같은 이름의 파일이 없으면 나감.
			if ( !serverFile.isFile()) break;	
			//같은 이름의 파일이 있으면 이름 뒤에 long 타입의 시간정보를 덧붙임.
			//savedFilename = filename + new Date().getTime();
		}
		*/

		//파일 저장
		try {
			upload.transferTo(new File(serverFile));  // 지정된 이름으로 지정된 위치에 파일 저장 
		} catch (Exception e) {
			savedFilename = null;
			e.printStackTrace();
		}
		
		return savedFilename;
	}
	
	/**
	 * 서버에 저장된 파일의 전체 경로를 전달받아, 해당 파일을 삭제
	 * @param fullpath 삭제할 파일의 경로
	 * @return 삭제 여부
	 */
	public static boolean deleteFile(String fullpath) {
		//파일 삭제 여부를 리턴할 변수
		boolean result = false;
		
		//전달된 전체 경로로 File객체 생성
		File delFile = new File(fullpath);
		
		//해당 파일이 존재하면 삭제
		if (delFile.isFile()) {
			delFile.delete();
			result = true;
		}
		
		return result;
	}
	
	
	public static void filDown(HttpServletRequest request,
			HttpServletResponse response, String filePath, String realFilNm,
			String viewFileNm) throws IOException {
		 
		File file = new File( filePath + realFilNm);
		System.out.println("root = " + filePath + realFilNm);
		if (file.exists() && file.isFile()) {
			response.setContentType("application/octet-stream; charset=utf-8");
			response.setContentLength((int) file.length());
			String browser = getBrowser(request);
			String disposition = getDisposition(viewFileNm, browser);
			response.setHeader("Content-Disposition", disposition);
			response.setHeader("Content-Transfer-Encoding", "binary");
			OutputStream out = response.getOutputStream();
			FileInputStream fis = null;
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
			if (fis != null)
				fis.close();
			out.flush();
			out.close();
		}
	}

	private static String getBrowser(HttpServletRequest request) {
		String header = request.getHeader("User-Agent");
		if (header.indexOf("MSIE") > -1 || header.indexOf("Trident") > -1)
			return "MSIE";
		else if (header.indexOf("Chrome") > -1)
			return "Chrome";
		else if (header.indexOf("Opera") > -1)
			return "Opera";
		return "Firefox";
	}

	private  static String getDisposition(String filename, String browser)
			throws UnsupportedEncodingException {
		String dispositionPrefix = "attachment;filename=";
		String encodedFilename = null;
		if (browser.equals("MSIE")) {
			encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll(
					"\\+", "%20");
		} else if (browser.equals("Firefox")) {
			encodedFilename = "\""
					+ new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
		} else if (browser.equals("Opera")) {
			encodedFilename = "\""
					+ new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
		} else if (browser.equals("Chrome")) {
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < filename.length(); i++) {
				char c = filename.charAt(i);
				if (c > '~') {
					sb.append(URLEncoder.encode("" + c, "UTF-8"));
				} else {
					sb.append(c);
				}
			}
			encodedFilename = sb.toString();
		}
		return dispositionPrefix + encodedFilename;
	}
	
	
	 public static void checkFolder(String path) {
			
			
			File Folder = new File(path);

			// 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
			if (!Folder.exists()) {
				try{
				    Folder.mkdir(); //폴더 생성합니다.
				    System.out.println("폴더가 생성되었습니다.");
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		         }else {
				System.out.println("이미 폴더가 생성되어 있습니다.");
			}
		    }
}
