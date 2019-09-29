package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import com.project.model.XrayVO;
import com.project.service.XrayService;

@Controller
public class XrayController {
	@Autowired XrayService xrayService;
	
	@RequestMapping(value="/admin/viewXray",method=RequestMethod.GET)
	public ModelAndView viewFeedback(@ModelAttribute("xrayview") XrayVO xrayVO){
		List ls = this.xrayService.view(xrayVO);
		return new ModelAndView("admin/viewXray","key",ls);
	}
}
