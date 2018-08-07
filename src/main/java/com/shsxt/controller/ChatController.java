package com.shsxt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	@RequestMapping("chat")
	public String chat(HttpSession httpSession,Model model,String toUserName) {
		model.addAttribute("currentUser", httpSession.getAttribute("currentUser"));
		model.addAttribute("toUserName", toUserName);
		return "chat";
	}
}
