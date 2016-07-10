package com.maogh.blog.account.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.maogh.blog.account.dao.UserDao;
import com.maogh.blog.account.model.User;
import com.maogh.blog.account.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public User getByUsername(String username) {
		return userDao.getByUsername(username);
	}
	
}
