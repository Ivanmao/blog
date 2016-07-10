package com.maogh.blog.account.service;

import com.maogh.blog.account.model.User;

public interface UserService {
	User getByUsername(String username);
}
