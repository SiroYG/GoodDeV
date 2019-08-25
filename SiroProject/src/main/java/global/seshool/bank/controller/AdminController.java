package global.seshool.bank.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import global.seshool.bank.dao.AdminRepository;
import global.seshool.bank.dao.BoardRepository;
import global.seshool.bank.util.FileService;
import global.seshool.bank.util.PageNavigator;
import global.seshool.bank.vo.Board;

@Controller
@RequestMapping("/Admin")
public class AdminController {

	@Autowired
	AdminRepository repo;
	
	@RequestMapping(value = "/adminmain", method = RequestMethod.GET)
	public String adminmain(Locale locale, Model model) {
	
		return "redirect:/Admin/ad_boardList";
	}
	@RequestMapping(value = "/adminview", method = RequestMethod.GET)
	public String adminview(Locale locale, Model model) {
	
		return "/admin/adm_answerview";
	}
	@RequestMapping(value = "/adminloan", method = RequestMethod.GET)
	public String adminloan(Locale locale, Model model) {
	
		return "/admin/adm_loan";
	}

	
	
	
//Admin 게시판단 (navigator사용)
	final String uploadPath="/uploadfile";
	
	// 검색, 첫화면
	@RequestMapping(value="/ad_boardList", method=RequestMethod.GET)
	public String AdminboardList(
			@RequestParam(value="searchItem",  defaultValue="title") String searchItem, 
			@RequestParam(value="searchWord",  defaultValue="")      String searchWord, 
			@RequestParam(value="currentPage", defaultValue="1")     int currentPage, Model model) {
	
		// 게시글 전체 개수 조회
		int totalRecordCount = repo.getBoardCount(searchItem, searchWord);
		
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		System.out.println(navi.getStartRecord());
		List<Board> list = repo.selectAll(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		System.out.println(list.size());
		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);
		
		return "admin/adm_answerlist";
	}
	
	@RequestMapping(value="/ad_boardDetail", method=RequestMethod.GET)
	public String boardDetail(int boardno, Model model) {
		System.out.println("boardno => " + boardno);
		Board board = repo.selectOne(boardno);
		
		model.addAttribute("board", board);
		System.out.println(board);
		return "admin/adm_answerview";
	}
	
	
	
	
//	@RequestMapping(value="/boardWrite",method =  RequestMethod.POST)
//	public String boardWriteProcess(Board board, 
//			MultipartFile upload, 
//			HttpSession session, 
//			RedirectAttributes rttr
//			) {
//		
//		String userid = (String) session.getAttribute("loginId");
//		board.setCutid(userid);
//		System.out.println(board);
//		
//		// 2) FileService 를 사용한 코드
//		if (upload!=null) {
//			String originalfile = upload.getOriginalFilename();
//			String savedfile = FileService.saveFile(upload, uploadPath);
//			System.out.println(savedfile);
//			board.setOriginalfile(originalfile);
//			board.setSavedfile(savedfile);
//		}
//		int result = repo.insertBoard(board);
//		System.out.println("게시물입력 : " +result);
//		
//		return "redirect:/Board/boardList";
//	}
//	
//	@RequestMapping(value="/board_view/{boardno}", method=RequestMethod.GET)
//	public String boardDetail(@PathVariable("boardno") int boardno, Model model) {
//		// System.out.println("boardseq => " + seq);
//		Board board = repo.selectOne(boardno);
//		
//		model.addAttribute("board", board);
//		
//		return "board/board_view";
//	}
//	@RequestMapping(value="/boardDelete", method=RequestMethod.GET)
//	public String boardDelete(int boardno, Model model) {
//		System.out.println("게시글 삭제 "+boardno);
//		int result = repo.deleteBoard(boardno);
//		
//		return "redirect:board_list"; // 
//	}
//	
//	 // 게시글 수정을 위한 화면 요청
//	@RequestMapping(value="/boardUpdate", method=RequestMethod.GET)
//	public String boardUpdate(int boardseq, Model model) {
//		Board board = repo.selectOne(boardseq);
//		
//		model.addAttribute("board", board);
//		return "board/boardUpdate";
//	}
//	
//	@RequestMapping(value="/boardUpdate", method=RequestMethod.POST)
//	public String boardUpdateProcess(Board board, Model model, RedirectAttributes rttr) {
//		int result = repo.updateBoard(board);
//		rttr.addAttribute("boardseq",board.getBoardno());
//		return "redirect:/board_view";
//	}
//	// 파일 다운로드
//		@RequestMapping(value="/download", method=RequestMethod.GET) 
//		public String download(int boardseq, HttpServletResponse response) {
//			Board board = repo.selectOne(boardseq);
//			String savedfile = board.getSavedfile();
//			String originalfile = board.getOriginalfile();
//			System.out.println(savedfile);
//			response.setHeader("Content-Disposition", "attachment;filename="+originalfile);
//		
//			String fullPath = uploadPath +"/" + savedfile;
//			System.out.println(fullPath);
//			FileInputStream filein = null;
//			ServletOutputStream fileout = null;
//			
//			try {
//				filein  = new FileInputStream(fullPath);
//				fileout = response.getOutputStream();
//				FileCopyUtils.copy(filein, fileout);
//				filein.close();
//				fileout.close();
//			
//			} catch (IOException e) {
//				
//				e.printStackTrace();
//			}
//			
//			return null;
//		}
		
	
}
