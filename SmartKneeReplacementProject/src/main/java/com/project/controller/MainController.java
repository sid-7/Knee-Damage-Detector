package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;

@Controller
public class MainController {
	//@Autowired MainService service;
	
	@RequestMapping(value="/")
	public ModelAndView loadMain()
	{
		return new ModelAndView("admin/index");
	}
	
	@RequestMapping(value="doctor")
	public ModelAndView loadDoctorIndex()
	{
		return new ModelAndView("doctor/doctorIndex");
	}
	
	@RequestMapping(value="/user/userIndex")
	public ModelAndView loadUserIndex()
	{
		return new ModelAndView("user/userIndex");
	}
	
	@RequestMapping(value="user/viewDetection")
	public ModelAndView loadUploadIndex()
	{
		return new ModelAndView("user/viewDetection");
	}
}
