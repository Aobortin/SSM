package com.shsxt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.shsxt.service.ArticleService;
import com.shsxt.vo.Article;

@Controller
@SessionAttributes
public class ArtitcleController {
	@Resource
    private ArticleService articleService;
	
	@RequestMapping("article")
	public String article(HttpSession httpSession,Model model,String articleId) {
		model.addAttribute("currentUser", httpSession.getAttribute("currentUser"));
		Article article = articleService.queryUserById(articleId);
		model.addAttribute("article",article);
		return "article";
	}
	
	@RequestMapping("writeArticle")
	public String writeArticle(Article article) {
		articleService.saveArticle(article);
		return "userCenter";
	}
}
