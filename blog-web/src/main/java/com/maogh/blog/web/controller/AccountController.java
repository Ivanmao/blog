package com.maogh.blog.web.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/account/**")
public class AccountController {
	@RequestMapping("login")
	public ModelAndView login(String username, String password,
			String rememberMe) {
		try {
			UsernamePasswordToken token = new UsernamePasswordToken(username,
					password);
			Subject currentUser = SecurityUtils.getSubject();
			currentUser.login(token);
			return new ModelAndView("/public/index");
		} catch (AuthenticationException e) {
			e.printStackTrace();
		}
		return new ModelAndView("/error");
	}

	@RequestMapping("logout")
	public ModelAndView logout() {
		Subject currentUser = SecurityUtils.getSubject();
		currentUser.logout();
		return new ModelAndView("/login.jsp");
	}
}
