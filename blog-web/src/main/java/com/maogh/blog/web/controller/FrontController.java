package com.maogh.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/public/**")
public class FrontController {
	@RequestMapping("index")
	public ModelAndView homePage(){
		return new ModelAndView("/public/index");
	}
}
