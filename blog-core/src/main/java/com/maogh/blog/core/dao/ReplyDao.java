package com.maogh.blog.core.dao;

import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.core.model.Reply;

@Repository
public class ReplyDao extends GenericHibernateDao<Reply, Long> {
	public ReplyDao() {
		super(Reply.class);
	}

}
