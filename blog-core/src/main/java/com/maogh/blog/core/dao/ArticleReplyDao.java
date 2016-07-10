package com.maogh.blog.core.dao;

import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.core.model.ArticleReply;

@Repository
public class ArticleReplyDao extends GenericHibernateDao<ArticleReply, Long> {
	public ArticleReplyDao() {
		super(ArticleReply.class);
	}

}
