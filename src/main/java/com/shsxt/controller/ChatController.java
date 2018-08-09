package com.shsxt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shsxt.service.UserService;
import com.shsxt.vo.User;

@Controller
public class ChatController {
	@Resource
    private UserService userService;
	
	@RequestMapping("chat")
	public String chat(HttpSession httpSession,Model model,String fromUserName,String toUserName) {
		User fromUser = userService.selectUserByUserName(fromUserName);
		model.addAttribute("fromUser", fromUser);
		model.addAttribute("toUserName", toUserName);
		return "chat";
	}
}
