package com.project.controller;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ComplaintVO;
import com.project.service.ComplaintService;

@Controller
public class ComplaintController {

	@Autowired ComplaintService complaintService;
	SimpleDateFormat formatter = new SimpleDateFormat("hh:mm:ss");
	SimpleDateFormat formatterDate = new SimpleDateFormat("dd/mm/yyyy");
	
	@RequestMapping(value="/doctor/loadInsertComplaint", method=RequestMethod.GET)
	public ModelAndView loadInsertComplaint(@ModelAttribute ComplaintVO complaintVO)
	{
		return new ModelAndView ("doctor/postComplaint","complaintadd",new ComplaintVO());
		
	}
	
	
	//for user
	@RequestMapping(value="/user/loadUserInsertComplaint", method=RequestMethod.GET)
	public ModelAndView loadUserInsertComplaint(@ModelAttribute ComplaintVO complaintVO)
	{
		return new ModelAndView ("user/postComplaint","complaintadd",new ComplaintVO());
		
	}
	
	
	//for user
	@RequestMapping(value="/user/userInsertComplaint", method=RequestMethod.POST)
	public ModelAndView userInsertComplaint(@ModelAttribute ComplaintVO complaintVO)
	{
		complaintVO.setComplaintDate(formatterDate.format(new Date()));
		complaintVO.setComplaintTime(formatter.format(new Date()));
		complaintVO.setComplaintStatus("pending");
		
		this.complaintService.add(complaintVO);
		return new ModelAndView ("user/postComplaint","complaintadd",new ComplaintVO());
		
	}
	
	@RequestMapping(value="/doctor/insertComplaint", method=RequestMethod.POST)
	public ModelAndView insertComplaint(@ModelAttribute ComplaintVO complaintVO)
	{
		complaintVO.setComplaintDate(formatterDate.format(new Date()));
		complaintVO.setComplaintTime(formatter.format(new Date()));
		complaintVO.setComplaintStatus("pending");
		
		this.complaintService.add(complaintVO);
		return new ModelAndView ("doctor/postComplaint","complaintadd",new ComplaintVO());
		
	}
	
	//user side
	@RequestMapping(value="/user/loadUserViewComplaint", method=RequestMethod.GET)
	public ModelAndView loadUserViewComplaint(@ModelAttribute ComplaintVO complaintVO)
	{
		return new ModelAndView ("user/viewPhoneComplaint","complaintview",new ComplaintVO());
		
	}
	
	//user side
	@RequestMapping(value="/user/userViewComplaint", method=RequestMethod.POST)
	public ModelAndView userViewComplaint(@ModelAttribute ComplaintVO complaintVO)
	{
		List ls = this.complaintService.userView(complaintVO);

		return new ModelAndView ("user/userViewComplaint","key",ls);
		
	}
	
	//admin side
	@RequestMapping(value="/admin/viewComplaint", method=RequestMethod.GET)
	public ModelAndView loadViewComplaint(@ModelAttribute ComplaintVO complaintVO)
	{
		List ls = this.complaintService.view(complaintVO);
		return new ModelAndView ("admin/viewComplaint","key",ls);
		
	}
	
	//doctor side
	@RequestMapping(value="/doctor/viewDoctorComplaint", method=RequestMethod.GET)
	public ModelAndView ViewDoctorComplaint(@ModelAttribute ComplaintVO complaintVO)
	{
		List ls = this.complaintService.view(complaintVO);
		return new ModelAndView ("doctor/viewComplaint","key",ls);
		
	}
	
	//admin side
	@RequestMapping(value="/admin/loadReplyComplaint", method=RequestMethod.GET)
	public ModelAndView loadReplyComplaint(@RequestParam("id")int id,@ModelAttribute ComplaintVO complaintVO)
	{ 
		complaintVO.setComplaintId(id);
		List ls = this.complaintService.edit(complaintVO);
		return new ModelAndView ("admin/replyComplaint","complaintedit",(ComplaintVO)ls.get(0));
	}
	
	//admin side
	@RequestMapping(value="/admin/updateComplaint", method=RequestMethod.POST)
	public ModelAndView updateComplaint(@ModelAttribute ComplaintVO complaintVO)
	{
		complaintVO.setComplaintDate(formatterDate.format(new Date()));
		complaintVO.setComplaintTime(formatter.format(new Date()));
		complaintVO.setComplaintStatus("replied");
		this.complaintService.update(complaintVO);
		return new ModelAndView("redirect:/admin/viewComplaint");
	}
}
