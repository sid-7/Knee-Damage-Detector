package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import com.project.model.PackageVO;
import com.project.service.PackageService;

@Controller
public class SubscriptionController {
	//@Autowired SubscriptionService subscriptionService;
	
	@RequestMapping(value="/doctor/buySubscription",method=RequestMethod.GET)
	public ModelAndView buySub(){
		return new ModelAndView("doctor/buySubscription");
	}
	
	
	
	
	

	}
	


