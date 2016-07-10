package com.maogh.blog.core.dao;

import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.core.model.Album;

@Repository
public class AlbumDao extends GenericHibernateDao<Album, Long> {
	public AlbumDao() {
		super(Album.class);
	}
	
	
	
	

}
