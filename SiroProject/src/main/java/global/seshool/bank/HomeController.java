package global.seshool.bank;

import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.seshool.bank.vo.Customer;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		return "index";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
	
		return "index";
	}
	@RequestMapping(value = "/gologin", method = RequestMethod.GET)
	public String gologin(Locale locale, Model model) {
	
		return "/member/login";
	}
	@RequestMapping(value = "/gojoin", method = RequestMethod.GET)
	public String gojoin(Locale locale, Model model) {
	
		return "/member/join";
	}
	@RequestMapping(value = "/gofindidpw", method = RequestMethod.GET)
	public String gofindidpw(Customer customer, Model model, HttpSession session) {
	
		return "/member/find_idpw";
	}
	
	@RequestMapping(value = "/goinfo", method = RequestMethod.GET)
	public String goinfo(Locale locale, Model model) {
	
		return "/member/info";
	}
	@RequestMapping(value = "/accountmain", method = RequestMethod.GET)
	public String goaccount(Locale locale, Model model) {
	
		return "/account/haveaccount";
	}
	@RequestMapping(value = "/addaccount1", method = RequestMethod.GET)
	public String addcount1(Locale locale, Model model) {
	
		return "/account/addaccount_1";
	}
	@RequestMapping(value = "/addaccount2", method = RequestMethod.GET)
	public String addcount2(Locale locale, Model model) {
	
		return "/account/addaccount_2";
	}
	@RequestMapping(value = "/addaccount3", method = RequestMethod.GET)
	public String addcount3(Locale locale, Model model) {
	
		return "/account/addaccount_3";
	}
	@RequestMapping(value = "/goboard", method = RequestMethod.GET)
	public String goboard(Locale locale, Model model) {
	
//		return "/board/board_list";
		return "redirect:/Board/boardList";
	}
	
	@RequestMapping(value = "/goboardview", method = RequestMethod.GET)
	public String goboardView(Locale locale, Model model) {
	
		return "/board/board_view";
	}
	@RequestMapping(value = "/goboardwrite", method = RequestMethod.GET)
	public String goboardWrite(Locale locale, Model model) {
		Date today = new Date();	
		model.addAttribute("today", today);
		return "/board/board_write";
	}
}
