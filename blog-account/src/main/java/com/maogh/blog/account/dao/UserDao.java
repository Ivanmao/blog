package com.maogh.blog.account.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.maogh.app.dao.GenericHibernateDao;
import com.maogh.blog.account.model.User;

@Repository
public class UserDao extends GenericHibernateDao<User, Long> {

	public UserDao() {
		super(User.class);
	}

	public User getByUsername(String username) {
		Session session = getSession();
		String hql = "from User where username=:username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);
		User user = (User)query.uniqueResult();
		return user;
	}

}
