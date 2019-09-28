package com.dev.cloud.controller;

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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dev.cloud.dao.boardRepository;
import com.dev.cloud.utill.FileService;
import com.dev.cloud.utill.PageNavigator;
import com.dev.cloud.vo.Board;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	boardRepository dao;

	final String uploadPath = "/uploadfile";
	@RequestMapping(value = "/boardhome", method = RequestMethod.GET)
	public String boardhome() { // 홈이동 (리다이렉트)
		return "/board/Board_list";
	}

	@RequestMapping(value = "gowrite", method = RequestMethod.GET)
	public String gowrite(Model model) {
		Date time = new Date();
		model.addAttribute("today", time);
		return "/board/Board_Write";
	}

	@RequestMapping(value = "goupdate", method = RequestMethod.GET)
	public String goupdate(Model model, int boardNum) {
		System.out.println("boardNum => " + boardNum);
		Board board = dao.selectOne(boardNum);
		model.addAttribute("board", board);
		return "/board/Board_update";
	}
	@RequestMapping(value = "boardupdate", method = {RequestMethod.POST, RequestMethod.GET})
	public String boardupdate(Board board) {
		System.out.println("수정하자"+board.getBoardNum());
		System.out.println(" 수정시도 board => " + board);
		if (dao.updateBoard(board)==1) {
			System.out.println("수정성공 ");
			return "redirect:/board/boardListForm";
		}
		System.out.println("수정실패");
		return "/board/Board_update";
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping(value = "/boardListForm", method = RequestMethod.GET)
	public String boardListForm(@RequestParam(value = "searchItem", defaultValue = "title") String searchItem,
			@RequestParam(value = "searchWord", defaultValue = "") String searchWord,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, Model model) {

		// 게시글 전체 개수 조회
		int totalRecordCount = dao.getBoardCount(searchItem, searchWord);
		System.out.println(totalRecordCount);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		System.out.println(navi.getStartRecord());
		List<Board> list = dao.selectAll(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		System.out.println(list.size());
		for (Board vo : list) {
			System.out.println(vo);
		}

		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);

		return "/board/Board_list";
	}

	@RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
	public String boardWriteProcess(Board board, MultipartFile upload, HttpSession session, RedirectAttributes rttr) {

		String userid = (String) session.getAttribute("loginId");
		board.setId(userid);
		System.out.println(upload.getOriginalFilename());
		System.out.println(board);

		// 2) FileService 를 사용한 코드
		if (upload != null) {
			String originalfile = upload.getOriginalFilename();
			String savedfile = FileService.saveFile(upload, uploadPath);
			System.out.println(savedfile);
			board.setOriginalFilename(originalfile);
			board.setSaveFilename(savedfile);
		}
		int result = dao.insertBoard(board);
		System.out.println("게시물입력 : " + result);

		return "redirect:/board/boardListForm";
	}

	@RequestMapping(value = "boardDetail", method = RequestMethod.GET)
	public String boardDetail(int boardNum, Model model) {

		System.out.println("boardNum => " + boardNum);
		Board board = dao.selectOne(boardNum);
		model.addAttribute("board", board);
		System.out.println(board);
		return "/board/Board_Detail";
	}

	@RequestMapping(value = "godelete", method = RequestMethod.GET)
	public String godelete(int boardNum, Model model) {
		System.out.println("게시글 삭제 " + boardNum);
		int result = dao.deleteBoard(boardNum);
		if (result > 0) {

			return "redirect:/board/boardListForm";
		} else {
			return "redirect:/";
		}
	}

	// 파일 다운로드
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public String download(int boardno, HttpServletResponse response) {
		Board board = dao.selectOne(boardno);
		String savedfile = board.getSaveFilename();
		String originalfile = board.getOriginalFilename();
		System.out.println(savedfile);
		response.setHeader("Content-Disposition", "attachment;filename=" + originalfile);

		String fullPath = uploadPath + "/" + savedfile;
		System.out.println(fullPath);
		FileInputStream filein = null;
		ServletOutputStream fileout = null;

		try {
			filein = new FileInputStream(fullPath);
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
