package com.maogh.blog.core.dao;

import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.core.model.Catalog;

@Repository
public class CatalogDao extends GenericHibernateDao<Catalog, Long> {

	public CatalogDao() {
		super(Catalog.class);
	}

}
