package com.maogh.blog.account.security;

import java.util.Set;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import com.maogh.blog.account.model.Role;
import com.maogh.blog.account.model.User;
import com.maogh.blog.account.service.UserService;

public class UserRealm extends AuthorizingRealm {
	@Autowired
	private UserService userService;
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken)token;
		
		String username = usernamePasswordToken.getUsername();
		User user = userService.getByUsername(username);
		
		// 用户存在
		if(null != user){
			SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
			Set<Role> roles = user.getRoles();
			for (Role role : roles) {
				simpleAuthorizationInfo.addRole(role.getName());
			}
			Subject subject = SecurityUtils.getSubject();
			Session session = subject.getSession();
			session.setAttribute("simpleAuthorizationInfo", simpleAuthorizationInfo);
			
			//当前用户放到session
			session.setAttribute("user", user);
			
			return new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(),getName());
		}
		return null;
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		SimpleAuthorizationInfo simpleAuthorizationInfo = (SimpleAuthorizationInfo)session.getAttribute("simpleAuthorizationInfo");
		return simpleAuthorizationInfo;
	}

}
