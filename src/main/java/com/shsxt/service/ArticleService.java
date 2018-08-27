package com.shsxt.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shsxt.dao.ArticleDao;
import com.shsxt.vo.Article;

@Service
public class ArticleService {
	@Resource
    private ArticleDao articleDao;
	
	public Article queryUserById(String articleId) {
		return articleDao.queryUserById(articleId);
	}
	
	public int saveArticle(Article article) {
		article.setId(String.valueOf(Math.random()).substring(2, 12));
		article.setCreateTime(new Date());
		String articleContent = article.getArticleContent();
		articleContent.replace("\r\n", "</p><p> ");
		article.setArticleContent("<p> "+articleContent+"</p>");
		return articleDao.saveArticle(article);
	}
	
	public List<Article> queryAllArticleByUser(String userId){
		return articleDao.queryAllArticleByUser(userId);
	}
}
