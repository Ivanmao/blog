package com.maogh.blog.core.dao;

import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.core.model.File;

@Repository
public class FileDao extends GenericHibernateDao<File, Long> {
	public FileDao() {
		super(File.class);
	}

}
