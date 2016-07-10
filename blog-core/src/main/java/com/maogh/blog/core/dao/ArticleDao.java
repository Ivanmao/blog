package com.maogh.blog.core.dao;

import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.core.model.Article;

@Repository
public class ArticleDao extends GenericHibernateDao<Article, Long> {
	public ArticleDao() {
		super(Article.class);
	}

}
