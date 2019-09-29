package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.DoctorVO;
import com.project.service.DoctorService;

@Controller
public class DoctorController {
	@Autowired DoctorService doctorService;
	
	@RequestMapping(value="/admin/viewDoctor",method=RequestMethod.GET)
	public ModelAndView viewDoctor(@ModelAttribute DoctorVO doctorVO)
	{
		List ls = this.doctorService.view(doctorVO);
		return new ModelAndView ("admin/viewDoctor","key",ls);
	}
	
	@RequestMapping(value="/admin/deleteDoctor",method=RequestMethod.GET)
	public ModelAndView deleteDoctor(@RequestParam("id")int id,@ModelAttribute DoctorVO doctorVO)
		{
			doctorVO.setId(id);
			List ls = this.doctorService.delete(doctorVO);
			doctorVO = (DoctorVO)ls.get(0);
			doctorVO.setDoctorStatus(false);
			this.doctorService.update(doctorVO);
			return new ModelAndView ("redirect:admin/viewDoctor");
		}
	@RequestMapping(value="/admin/editDoctor",method=RequestMethod.GET)
	public ModelAndView editDoctor(@RequestParam("id")int id,@ModelAttribute DoctorVO doctorVO)
	{
		doctorVO.setId(id);
		List ls= this.doctorService.edit(doctorVO);
		return new ModelAndView("admin/editDoctor","doctoredit",(DoctorVO)ls.get(0));
	}
	@RequestMapping(value="/admin/updateDoctor",method=RequestMethod.POST)
	public ModelAndView updateDoctor(@ModelAttribute DoctorVO doctorVO)
		{	 
		    
		   
			 this.doctorService.update(doctorVO);
             return new ModelAndView("redirect:/admin/viewDoctor");
		}

	
}
