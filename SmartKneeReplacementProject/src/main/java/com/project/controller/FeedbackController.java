package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import com.project.model.FeedbackVO;
import com.project.service.FeedbackService;
import com.project.utils.Basemethods;
import com.project.model.LoginVO;
import com.project.service.LoginService;

@Controller
public class FeedbackController {
	@Autowired LoginService loginService;
	@Autowired FeedbackService feedbackService;
	
	@RequestMapping(value="/doctor/loadDoctorFeedback",method=RequestMethod.GET)
	public ModelAndView loadDoctorFeedback(@ModelAttribute FeedbackVO feedbackVO)
	{
		return new ModelAndView("/doctor/postFeedback","feedbackpost",new FeedbackVO());
	}
	
	@RequestMapping(value="/doctor/postRating",method=RequestMethod.POST)
	public ModelAndView postRaiting(@ModelAttribute FeedbackVO feedbackVO,LoginVO loginVO)
	{
		String userName = Basemethods.getUser();

		List loginList  = loginService.searchLoginID(userName);
		
		LoginVO loginVO2 = (LoginVO) loginList.get(0);		
		feedbackVO.setLoginVO(loginVO2);
		this.feedbackService.post(feedbackVO);
		return new ModelAndView("redirect:/doctor/loadDoctorFeedback");
	}
	
	@RequestMapping(value="/admin/viewFeedback",method=RequestMethod.GET)
	public ModelAndView viewFeedback(@ModelAttribute("feedbackview") FeedbackVO feedbackVO){
		List ls = this.feedbackService.view(feedbackVO);
		return new ModelAndView("admin/viewFeedback","key",ls);
	}
	
	@RequestMapping(value="/doctor/viewDoctorFeedback",method=RequestMethod.GET)
	public ModelAndView viewstaffFeedback(@ModelAttribute FeedbackVO feedbackVO) {
		
		String userName = Basemethods.getUser();
		List loginList  = loginService.searchLoginID(userName); 	
		LoginVO loginVO2 = (LoginVO) loginList.get(0);	
		feedbackVO.setLoginVO(loginVO2);
		
		List ls = this.feedbackService.viewDoctor(feedbackVO);
		
		return new ModelAndView("/doctor/viewDoctorFeedback","key",ls);
		
	}
	
	@RequestMapping(value="/user/loadUserFeedback",method=RequestMethod.GET)
	public ModelAndView loadUserFeedback(@ModelAttribute FeedbackVO feedbackVO)
	{
		return new ModelAndView("/user/postFeedback","feedbackpost",new FeedbackVO());
	}
	
	@RequestMapping(value="/user/postUserRating",method=RequestMethod.POST)
	public ModelAndView postRating(@ModelAttribute FeedbackVO feedbackVO,LoginVO loginVO)
	{
		/*String userName = Basemethods.getUser();

		List loginList  = loginService.searchLoginID(userName);
		
		LoginVO loginVO2 = (LoginVO) loginList.get(0);		
		feedbackVO.setLoginVO(loginVO2);
*/		this.feedbackService.post(feedbackVO);
		return new ModelAndView("redirect:/user/loadUserFeedback");
	}
	

}
