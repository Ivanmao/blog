package com.maogh.blog.account.dao;

import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.account.model.Role;

@Repository
public class RoleDao extends GenericHibernateDao<Role, Long> {
	public RoleDao() {
		super(Role.class);
	}

}
