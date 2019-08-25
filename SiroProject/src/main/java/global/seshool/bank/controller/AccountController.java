package global.seshool.bank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import global.seshool.bank.dao.AccountRepository;



@Controller
@RequestMapping("/Account")
public class AccountController {
	@Autowired
	AccountRepository rep;	
	
	
	
	
}
