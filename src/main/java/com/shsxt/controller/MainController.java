package com.shsxt.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.shsxt.service.UserService;
import com.shsxt.utils.FileHandleUtil;
import com.shsxt.vo.User;

@Controller
@SessionAttributes
public class MainController {
	@Resource
    private UserService userService;
	
	@RequestMapping("main")
	public String login(@RequestParam(required=false) String userName,@RequestParam(required=false) String userPwd,Model model,HttpSession httpSession) {
//		User currentUser =null;
//		if(userName!=null&&userPwd!=null) {
//			currentUser = userService.queryUserByLogin(userName, userPwd);
//			httpSession.setAttribute("currentUser", currentUser);
//		}
		User currentUser =(User)httpSession.getAttribute("currentUser");
		if(currentUser!=null) {
			model.addAttribute("currentUser",currentUser);
		}
		return "main";
	}
	
	@ResponseBody
	@RequestMapping("validateUser")
	public String validateUser(@RequestParam String userName,@RequestParam String userPwd,HttpSession httpSession) {
		User currentUser =null;
		if(userName!=null&&userPwd!=null) {
			currentUser = userService.queryUserByLogin(userName, userPwd);
		}
		if(currentUser!=null) {
			httpSession.setAttribute("currentUser", currentUser);
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
	public String enrol(User user,HttpSession httpSession){
		user.setId(String.valueOf(Math.random()).substring(2, 12));
		userService.saveUser(user);
		httpSession.setAttribute("currentUser", user);
		return "main";
	}
	
	@RequestMapping("billBoard")
	public String billBoard(HttpSession httpSession,Model model) {
		model.addAttribute("currentUser", httpSession.getAttribute("currentUser"));
		return "billBoard";
	}
	
	@RequestMapping("exit")
	public String exit(HttpSession httpSession,Model model) {
		httpSession.removeAttribute("currentUser");
		model.addAttribute("currentUser", null);
		return "redirect:main";
	}
	
	@RequestMapping("userCenter")
	public String userCenter(HttpSession httpSession,Model model) {
		model.addAttribute("currentUser", httpSession.getAttribute("currentUser"));
		return "userCenter";
	}
	
	@RequestMapping("uploadFile")
	public String  springUpload(HttpServletRequest request,HttpSession httpSession) throws IllegalStateException, IOException{
		String path="/Users/linwang/Documents/SSM/src/main/webapp/image/avatar/";
		User currentUser=(User)httpSession.getAttribute("currentUser");
		FileHandleUtil.upload(request, path,currentUser.getUserName());
	    return "userCenter"; 
	}

	@RequestMapping("article")
	public String article(HttpSession httpSession,Model model) {
		model.addAttribute("currentUser", httpSession.getAttribute("currentUser"));
		return "article";
	}
	
	@RequestMapping("loverDetail")
	public String loverDetail(@RequestParam String loverId,Model model) {
		User lover = userService.queryUserByUserId(loverId);
		model.addAttribute("lover", lover);
		return "loverDetail";
	}
}
