package com.shsxt.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.shsxt.vo.Article;

public interface ArticleDao {
	@Select("select "
			+ "id as id,"
			+ "author_id as authorId,"
			+ "author_name as authorName,"
			+ "article_title as articleTitle,"
			+ "article_content as articleContent,"
			+ "create_time as createTime,"
			+ "embed_url as embedUrl,"
			+ "remark1 as remark1,"
			+ "remark2 as remark2"
			+ " from article where id=#{articleId}")
    public Article queryUserById(String articleId);
	
	@Insert("INSERT INTO article("
			+ "id,"
			+ "author_id,"
			+ "author_name,"
			+ "article_title,"
			+ "article_content,"
			+ "create_time,"
			+ "embed_url,"
			+ "remark1,"
			+ "remark2)  "
			+ "VALUES("
			+ "#{id},"
			+ "#{authorId},"
			+ "#{authorName},"
			+ "#{articleTitle},"
			+ "#{articleContent},"
			+ "#{createTime},"
			+ "#{embedUrl},"
			+ "#{remark1},"
			+ "#{remark2});")
	public int saveArticle(Article article);
	
	@Select("select "
			+ "id as id,"
			+ "author_id as authorId,"
			+ "author_name as authorName,"
			+ "article_title as articleTitle,"
			+ "article_content as articleContent,"
			+ "create_time as createTime,"
			+ "embed_url as embedUrl,"
			+ "remark1 as remark1,"
			+ "remark2 as remark2"
			+ " from article where author_id=#{userId}")
	public List<Article> queryAllArticleByUser(String userId);
}
