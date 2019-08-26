package com.seschool.bank.action;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.seschool.bank.dao.BoardDAO;
import com.seschool.bank.util.FileService;
import com.seschool.bank.util.PageNavigator;
import com.seschool.bank.vo.Board;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/board")
public class BoardAction {
	
	@Autowired
	BoardDAO dao;
	
	final String uploadPath="/uploadfile";
	
	@RequestMapping(value = "boardListForm", method = RequestMethod.GET)
	public String boardListForm(@RequestParam(value="searchItem",  defaultValue="title") String searchItem, 
			@RequestParam(value="searchWord",  defaultValue="")      String searchWord, 
			@RequestParam(value="currentPage", defaultValue="1")     int currentPage, Model model) {
		
		// 게시글 전체 개수 조회
		int totalRecordCount = dao.getBoardCount(searchItem, searchWord);
		System.out.println(totalRecordCount);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		System.out.println(navi.getStartRecord());
		List<Board> list = dao.selectAll(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		System.out.println(list.size());
		for(Board vo : list){
			System.out.println(vo);
		}
		
		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);
		
		return "/board/boardlist";
	}
	
	@RequestMapping(value = "boardDetail", method = RequestMethod.GET)
	public String boardDetail(int boardno, Model model) {
		
		System.out.println("boardno => " + boardno);
		Board board = dao.selectOne(boardno);
		
		model.addAttribute("board", board);
		System.out.println(board);
		return "/board/boardview";
	}
	
	@RequestMapping(value = "boardDelete", method = RequestMethod.GET)
	public String boardDelete(int boardno, Model model) {
		System.out.println("게시글 삭제 "+boardno);
		int result = dao.deleteBoard(boardno);
		
		return "redirect:boardlist"; 
	}
	
	@RequestMapping(value = "goboardwrite", method = RequestMethod.GET)
	public String goboardwrite(Model model) {
		Date time = new Date();
		model.addAttribute("today", time);
		return "/board/boardwrite";  
	}
	@RequestMapping(value="/boardWrite",method =  RequestMethod.POST)
	public String boardWriteProcess(Board board, 
			MultipartFile upload, 
			HttpSession session, 
			RedirectAttributes rttr
			) {
		
		String userid = (String) session.getAttribute("custid");
		board.setCustid(userid);
		System.out.println(board);
		
		// 2) FileService 를 사용한 코드
		if (upload!=null) {
			String originalfile = upload.getOriginalFilename();
			String savedfile = FileService.saveFile(upload, uploadPath);
			System.out.println(savedfile);
			board.setOriginalfile(originalfile);
			board.setSavedfile(savedfile);
		}
		int result = dao.insertBoard(board);
		System.out.println("게시물입력 : " +result);
		
		return "redirect:/board/boardListForm";
	}
	
		// 파일 다운로드
		@RequestMapping(value="/download", method=RequestMethod.GET) 
		public String download(int boardseq, HttpServletResponse response) {
			Board board = dao.selectOne(boardseq);
			String savedfile = board.getSavedfile();
			String originalfile = board.getOriginalfile();
			System.out.println(savedfile);
			response.setHeader("Content-Disposition", "attachment;filename="+originalfile);
		
			String fullPath = uploadPath +"/" + savedfile;
			System.out.println(fullPath);
			FileInputStream filein = null;
			ServletOutputStream fileout = null;
			
			try {
				filein  = new FileInputStream(fullPath);
				fileout = response.getOutputStream();
				FileCopyUtils.copy(filein, fileout);
				filein.close();
				fileout.close();
			
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			
			return null;
		}
	
}
