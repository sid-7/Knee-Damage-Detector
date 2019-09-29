package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserAppointmentController {
	//@Autowired MainService service;
	
	@RequestMapping(value="/user/appointment")
	public ModelAndView loadMain()
	{
		return new ModelAndView("user/appointment");
	}
	
	@RequestMapping(value="/user/upload")
	public ModelAndView loadDoctorIndex()
	{
		return new ModelAndView("user/upload");
	}
	

}
