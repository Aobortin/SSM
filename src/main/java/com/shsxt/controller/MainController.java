package com.shsxt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shsxt.service.UserService;
import com.shsxt.vo.User;

@Controller
public class MainController {
	@Resource
    private UserService userService;
	
	@RequestMapping("main")
	public String login(@RequestParam(required=false) String userName,@RequestParam(required=false) String userPwd,Model model) {
		User currentUser =null;
		if(userName!=null&&userPwd!=null) {
			currentUser = userService.queryUserByLogin(userName, userPwd);
		}
//		if(currentUser!=null) {
			model.addAttribute("currentUser",currentUser);
			return "main";
//		}else {
//			return "redirect:login";
//		}
	}
	
	@ResponseBody
	@RequestMapping("validateUser")
	public String validateUser(@RequestParam String userName,@RequestParam String userPwd) {
		User currentUser =null;
		if(userName!=null&&userPwd!=null) {
			currentUser = userService.queryUserByLogin(userName, userPwd);
		}
		if(currentUser!=null) {
			return "true";
		}else {
			return "false";
		}
	}
	
	@RequestMapping("login")
	public String login(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.getId();
		return "login";
	}
	
	@RequestMapping("register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("enrol")
	public String enrol(User user){
		userService.saveUser(user);
		return "main";
	}
	
	@RequestMapping("billBoard")
	public String billBoard() {
		return "billBoard";
	}
//	@RequestMapping("index")
//	public String allDatas(HttpServletRequest request,Model model,Map<String,String> map,ModelMap modelMap) {
//		model.addAttribute("abc", "测试 jstl标签");
//		map.put("def", "测试map");
//		request.setAttribute("ghi", "测试request");
//		modelMap.addAttribute("jkl", "测试modelMap");
//		return "login";
//	}
}
