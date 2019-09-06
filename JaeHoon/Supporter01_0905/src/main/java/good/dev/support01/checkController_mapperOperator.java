package good.dev.support01;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import good.dev.support01.dao.memberRepository;
import good.dev.support01.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class checkController_mapperOperator {
	
	@Autowired 
	memberRepository repo;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		

		Member temp=new Member();
		temp.setId("temp");
		temp.setPw("temp");
		temp.setMemberType("temp");
		temp.setEmail("temp");
		temp.setEmail("010-1111-1111");
		Member copiedTemp=new Member();
		copiedTemp=temp;
		repo.signup_member(temp);
		Member sysout=repo.searchId_pw_member(temp);
		System.out.println(sysout);
		
		return "redirect : home";
	}
	
}
