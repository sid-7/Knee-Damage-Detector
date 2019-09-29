package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	//@Autowired MainService service;
	
	@RequestMapping(value="/user/about")
	public ModelAndView loadAbout()
	{
		return new ModelAndView("user/about");
	}
	
	@RequestMapping(value="/user/contact")
	public ModelAndView loadContact()
	{
		return new ModelAndView("user/contact");
	}
	
	
}
