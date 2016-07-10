package com.maogh.blog.core.dao;

import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.core.model.Photo;

@Repository
public class PhotoDao extends GenericHibernateDao<Photo, Long> {
	public PhotoDao() {
		super(Photo.class);
	}

}
