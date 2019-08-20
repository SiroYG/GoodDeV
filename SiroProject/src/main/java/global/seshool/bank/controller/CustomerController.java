package global.seshool.bank.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="Customer")
public class CustomerController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
	
		return "index";
	}
	@RequestMapping(value = "/join_pop", method = RequestMethod.GET)
	public String idCheck(Locale locale, Model model) {
	
		return "join_pop";
	}
	
	
}

