package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ResultVO;
import com.project.service.ResultService;

@Controller
public class ResultController {

	@Autowired ResultService resultService;
	
	
	@RequestMapping(value="/admin/viewResult", method=RequestMethod.GET)
	public ModelAndView loadViewPackage(@ModelAttribute ResultVO resultVO)
	{
		List ls = this.resultService.view(resultVO);
		return new ModelAndView ("admin/viewResult","key",ls);
		
	}
	
}
