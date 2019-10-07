package com.dev.cloud.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dev.cloud.dao.chatRepository;
import com.dev.cloud.vo.Chat;

@Controller
@RequestMapping("/chat")
public class ChatController {
	@Autowired
	chatRepository rep;
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	@ResponseBody
	public List<Chat> insert(Chat Chat) {
		System.out.println(Chat.toString());
		if (rep.insert(Chat) == 1) {
			return rep.selectAll(Chat);
		} else {
			return rep.selectAll(Chat);
		}

	}
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	@ResponseBody
	public List<Chat> selectAll(Chat Chat) {
		System.out.println(Chat.toString());
	
			return rep.selectAll(Chat);
	}
	
}
