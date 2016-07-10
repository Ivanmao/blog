package com.maogh.blog.core.dao;

import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.core.model.PhotoReply;

@Repository
public class PhotoReplyDao extends GenericHibernateDao<PhotoReply, Long> {
	public PhotoReplyDao() {
		super(PhotoReply.class);
	}

}
